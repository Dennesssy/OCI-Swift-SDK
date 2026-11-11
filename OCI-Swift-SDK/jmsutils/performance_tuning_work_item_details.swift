import Foundation

// MARK: - PerformanceTuningWorkItemDetails

public struct PerformanceTuningWorkItemDetails: Codable, Sendable {

    public var artifactObjectStoragePath: String?
    public var analysisProjectName: String?
    public var workItemType: WorkItemTypeEnum?

    private enum CodingKeys: String, CodingKey {
        case artifactObjectStoragePath, analysisProjectName, workItemType
    }

    public init(
                artifactObjectStoragePath: String? = nil,
                analysisProjectName: String? = nil,
                workItemType: WorkItemTypeEnum? = nil
    ) {
        self.artifactObjectStoragePath = artifactObjectStoragePath
        self.analysisProjectName = analysisProjectName
        self.workItemType = workItemType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PerformanceTuningWorkItemDetails: CustomStringConvertible {
    public var description: String { "PerformanceTuningWorkItemDetails()" }
}