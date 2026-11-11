import Foundation

// MARK: - JavaMigrationAnalysisTarget

public struct JavaMigrationAnalysisTarget: Codable, Sendable {

    public var analysisProjectName: String?
    public var inputApplicationsObjectStoragePaths: [String]
    public var targetJdkVersions: [String]
    public var includePackagePrefixes: [String]?
    public var excludePackagePrefixes: [String]?

    private enum CodingKeys: String, CodingKey {
        case analysisProjectName, inputApplicationsObjectStoragePaths, targetJdkVersions, includePackagePrefixes, excludePackagePrefixes
    }

    public init(
                analysisProjectName: String? = nil,
                inputApplicationsObjectStoragePaths: [String],
                targetJdkVersions: [String],
                includePackagePrefixes: [String]? = nil,
                excludePackagePrefixes: [String]? = nil
    ) {
        self.analysisProjectName = analysisProjectName
        self.inputApplicationsObjectStoragePaths = inputApplicationsObjectStoragePaths
        self.targetJdkVersions = targetJdkVersions
        self.includePackagePrefixes = includePackagePrefixes
        self.excludePackagePrefixes = excludePackagePrefixes
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension JavaMigrationAnalysisTarget: CustomStringConvertible {
    public var description: String { "JavaMigrationAnalysisTarget()" }
}