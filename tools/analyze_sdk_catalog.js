#!/usr/bin/env node

const fs = require("fs");
const path = require("path");

const root = process.cwd();
const ignoredTopLevelDirs = new Set([
  ".git",
  ".build",
  "Sources",
  "Tests",
  "docs",
  "tools",
]);

function readJSONIfExists(file) {
  if (!fs.existsSync(file)) {
    return null;
  }
  return JSON.parse(fs.readFileSync(file, "utf8"));
}

function topLevelServiceDirs() {
  return fs
    .readdirSync(root, { withFileTypes: true })
    .filter((entry) => entry.isDirectory())
    .map((entry) => entry.name)
    .filter((name) => !ignoredTopLevelDirs.has(name))
    .sort();
}

function swiftFiles(dir) {
  const fullDir = path.join(root, dir);
  if (!fs.existsSync(fullDir)) {
    return [];
  }
  return fs
    .readdirSync(fullDir, { withFileTypes: true })
    .filter((entry) => entry.isFile() && entry.name.endsWith(".swift"))
    .map((entry) => path.join(dir, entry.name))
    .sort();
}

function generatedTargets() {
  const manifest = path.join(root, "Package.swift");
  if (!fs.existsSync(manifest)) {
    return [];
  }
  const text = fs.readFileSync(manifest, "utf8");
  return [...text.matchAll(/\("([^"]+)",\s*"([^"]+)"\)/g)]
    .map((match) => ({ name: match[1], dir: match[2] }))
    .sort((a, b) => a.dir.localeCompare(b.dir));
}

function typeDeclarations(file) {
  const text = fs.readFileSync(path.join(root, file), "utf8");
  const declarations = [];
  const regex = /^public\s+(struct|class|actor|enum|protocol)\s+([A-Za-z_][A-Za-z0-9_]*)/gm;
  let match;
  while ((match = regex.exec(text))) {
    declarations.push(match[2]);
  }
  return declarations;
}

function analyzeDirectory(dir) {
  const files = swiftFiles(dir);
  const typeToFiles = new Map();
  const declaredTypes = new Set();
  const anyFiles = [];
  const descriptionCollisionFiles = [];
  const goArtifactFiles = [];
  const clientFiles = [];
  const missingReferences = [];

  for (const file of files) {
    const text = fs.readFileSync(path.join(root, file), "utf8");
    for (const typeName of typeDeclarations(file)) {
      declaredTypes.add(typeName);
      if (!typeToFiles.has(typeName)) {
        typeToFiles.set(typeName, []);
      }
      typeToFiles.get(typeName).push(file);
    }
    if (text.includes("[String: [String: Any]]") || text.includes(": Any?") || text.includes(": [Any]")) {
      anyFiles.push(file);
    }
    if (text.includes("public var description: String?") && text.includes("CustomStringConvertible")) {
      descriptionCollisionFiles.push(file);
    }
    if (
      text.includes("common.RequestMetadata") ||
      text.includes("HTTPURLResponse??") ||
      text.includes("public var common: .") ||
      text.includes("ConfigurationProvider??") ||
      /^\s*public\s+typealias\s+[A-Za-z_][A-Za-z0-9_]*\s*=\s*[a-z][A-Za-z0-9_]*\s*$/m.test(text) ||
      /^\s*public\s+var\s+[A-Za-z_][A-Za-z0-9_]*:\s*[a-z]\??\s*$/m.test(text)
    ) {
      goArtifactFiles.push(file);
    }
    if (file.endsWith("_client.swift")) {
      clientFiles.push(file);
    }
  }

  const knownExternalTypes = new Set([
    "Any",
    "Bool",
    "CodingKey",
    "Codable",
    "CustomDebugStringConvertible",
    "CustomStringConvertible",
    "Data",
    "Date",
    "Decoder",
    "Dictionary",
    "Double",
    "Encodable",
    "Encoder",
    "Float",
    "HTTPClient",
    "HTTPURLResponse",
    "Int",
    "Int32",
    "Int64",
    "JSONValue",
    "Region",
    "Sendable",
    "Signer",
    "String",
    "URL",
    "UUID",
    "Void",
  ]);

  for (const file of files) {
    const text = fs
      .readFileSync(path.join(root, file), "utf8")
      .replace(/\/\/.*$/gm, "")
      .replace(/"([^"\\]|\\.)*"/g, '""');
    const references = new Set();
    const typeAnnotationRegex = /:\s*([A-Z][A-Za-z0-9_]*(?:\??)?)/g;
    const arrayTypeRegex = /\[\s*([A-Z][A-Za-z0-9_]*)\s*\]/g;
    const functionTypeRegex = /(?:\(|->)\s*([A-Z][A-Za-z0-9_]*)/g;
    let match;
    while ((match = typeAnnotationRegex.exec(text))) {
      references.add(match[1].replace(/\?+$/, ""));
    }
    while ((match = arrayTypeRegex.exec(text))) {
      references.add(match[1]);
    }
    while ((match = functionTypeRegex.exec(text))) {
      references.add(match[1]);
    }
    for (const reference of references) {
      if (!declaredTypes.has(reference) && !knownExternalTypes.has(reference)) {
        missingReferences.push({ file, type: reference });
      }
    }
  }

  const duplicateTypes = [...typeToFiles.entries()]
    .filter(([, owners]) => owners.length > 1)
    .map(([type, owners]) => ({ type, files: owners }));

  return {
    dir,
    fileCount: files.length,
    clientFileCount: clientFiles.length,
    duplicateTypeCount: duplicateTypes.length,
    duplicateTypes,
    anyFileCount: anyFiles.length,
    anyFiles,
    descriptionCollisionCount: descriptionCollisionFiles.length,
    descriptionCollisionFiles,
    goArtifactFileCount: goArtifactFiles.length,
    goArtifactFiles,
    missingReferenceCount: missingReferences.length,
    missingReferences,
  };
}

function githubDirs(file, prefixToStrip = "") {
  const catalog = readJSONIfExists(file);
  if (!catalog) {
    return null;
  }
  return catalog
    .filter((entry) => entry.type === "dir")
    .map((entry) => entry.name.replace(prefixToStrip, ""))
    .sort();
}

const localDirs = topLevelServiceDirs();
const targetEntries = generatedTargets();
const targetByDir = new Map(targetEntries.map((entry) => [entry.dir, entry.name]));
const analyses = localDirs.map((dir) => {
  const analysis = analyzeDirectory(dir);
  analysis.inManifest = targetByDir.has(dir);
  analysis.moduleName = targetByDir.get(dir) || null;
  analysis.isExpansionCandidate =
    !analysis.inManifest &&
    analysis.fileCount > 0 &&
    analysis.clientFileCount > 0 &&
    analysis.duplicateTypeCount === 0 &&
    analysis.anyFileCount === 0 &&
    analysis.descriptionCollisionCount === 0 &&
    analysis.goArtifactFileCount === 0 &&
    analysis.missingReferenceCount === 0;
  return analysis;
});
const goDirs = githubDirs("/tmp/oci-go-sdk-contents.json");
const pythonDirs = githubDirs("/tmp/oci-python-sdk-contents.json");
const ignoredGoDirs = new Set(["cmd", "example"]);

const summary = {
  localServiceDirCount: localDirs.length,
  localSwiftFileCount: analyses.reduce((sum, entry) => sum + entry.fileCount, 0),
  localClientFileCount: analyses.reduce((sum, entry) => sum + entry.clientFileCount, 0),
  dirsWithDuplicateTypes: analyses.filter((entry) => entry.duplicateTypeCount > 0).length,
  duplicateTypeCount: analyses.reduce((sum, entry) => sum + entry.duplicateTypeCount, 0),
  dirsWithAnyFields: analyses.filter((entry) => entry.anyFileCount > 0).length,
  anyFieldFileCount: analyses.reduce((sum, entry) => sum + entry.anyFileCount, 0),
  dirsWithDescriptionCollisions: analyses.filter((entry) => entry.descriptionCollisionCount > 0).length,
  descriptionCollisionFileCount: analyses.reduce((sum, entry) => sum + entry.descriptionCollisionCount, 0),
  manifestGeneratedTargetCount: targetEntries.length,
  dirsWithGoArtifacts: analyses.filter((entry) => entry.goArtifactFileCount > 0).length,
  goArtifactFileCount: analyses.reduce((sum, entry) => sum + entry.goArtifactFileCount, 0),
  dirsWithMissingReferences: analyses.filter((entry) => entry.missingReferenceCount > 0).length,
  missingReferenceCount: analyses.reduce((sum, entry) => sum + entry.missingReferenceCount, 0),
  expansionCandidates: analyses.filter((entry) => entry.isExpansionCandidate).map((entry) => entry.dir),
};

if (goDirs) {
  const goServiceDirs = goDirs.filter((dir) => !ignoredGoDirs.has(dir));
  summary.goServiceDirCount = goServiceDirs.length;
  summary.missingFromLocalComparedToGo = goServiceDirs.filter((dir) => !localDirs.includes(dir));
  summary.extraLocalComparedToGo = localDirs.filter((dir) => !goServiceDirs.includes(dir));
}

if (pythonDirs) {
  summary.pythonPackageDirCount = pythonDirs.length;
}

const report = {
  summary,
  directories: analyses,
};

console.log(JSON.stringify(report, null, 2));
