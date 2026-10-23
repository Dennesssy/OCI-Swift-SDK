#!/usr/bin/env node

const fs = require("fs");

const packageText = fs.readFileSync("Package.swift", "utf8");
const umbrellaText = fs.readFileSync("Sources/OCI_SDK.swift", "utf8");

const targetBlockMatch = packageText.match(/let generatedServiceTargets:[\s\S]*?\n\]/);
if (!targetBlockMatch) {
  console.error("Could not find generatedServiceTargets in Package.swift");
  process.exit(1);
}

const generatedTargets = [...targetBlockMatch[0].matchAll(/\("([^"]+)",\s*"([^"]+)"\)/g)].map((match) => match[1]);
const exportedModules = [...umbrellaText.matchAll(/^@_exported import ([A-Za-z_][A-Za-z0-9_]*)$/gm)].map((match) => match[1]);
const requiredExports = ["OCICommon", "AccessGovernanceCP", ...generatedTargets];

const missingExports = requiredExports.filter((name) => !exportedModules.includes(name));
const staleExports = exportedModules.filter((name) => !requiredExports.includes(name));

if (missingExports.length || staleExports.length) {
  if (missingExports.length) {
    console.error(`Missing umbrella exports: ${missingExports.join(", ")}`);
  }
  if (staleExports.length) {
    console.error(`Stale umbrella exports: ${staleExports.join(", ")}`);
  }
  process.exit(1);
}

console.log(`Manifest/export validation passed for ${generatedTargets.length} generated service targets.`);
