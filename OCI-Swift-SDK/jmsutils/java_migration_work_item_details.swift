import Foundation

// MARK: - JavaMigrationWorkItemDetails

public struct JavaMigrationWorkItemDetails: Codable, Sendable {

    public var targetJdkVersion: String?
    public var inputApplicationsObjectStoragePaths: String?
    public var analysisProjectName: String?
    public var workItemType: WorkItemTypeEnum?

    private enum CodingKeys: String, CodingKey {
        case targetJdkVersion, inputApplicationsObjectStoragePaths, analysisProjectName, workItemType
    }

    public init(
                targetJdkVersion: String? = nil,
                inputApplicationsObjectStoragePaths: String? = nil,
                analysisProjectName: String? = nil,
                workItemType: WorkItemTypeEnum? = nil
    ) {
        self.targetJdkVersion = targetJdkVersion
        self.inputApplicationsObjectStoragePaths = inputApplicationsObjectStoragePaths
        self.analysisProjectName = analysisProjectName
        self.workItemType = workItemType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension JavaMigrationWorkItemDetails: CustomStringConvertible {
    public var description: String { "JavaMigrationWorkItemDetails()" }
}