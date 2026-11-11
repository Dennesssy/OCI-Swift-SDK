import Foundation

// MARK: - ListExternalLocationSummariesMetadataEntityTypeEnum

public enum ListExternalLocationSummariesMetadataEntityTypeEnum: String, Codable, Sendable {
    case dbsystem = "dbsystem"
}

public extension ListExternalLocationSummariesMetadataEntityTypeEnum {
    static var allValues: [ListExternalLocationSummariesMetadataEntityTypeEnum] { [.dbsystem] }
    static var allStringValues: [String] { ["dbsystem"] }
    static func fromString(_ value: String) -> ListExternalLocationSummariesMetadataEntityTypeEnum? { ListExternalLocationSummariesMetadataEntityTypeEnum(rawValue: value) }
}