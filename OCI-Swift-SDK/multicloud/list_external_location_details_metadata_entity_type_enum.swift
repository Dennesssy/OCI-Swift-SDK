import Foundation

// MARK: - ListExternalLocationDetailsMetadataEntityTypeEnum

public enum ListExternalLocationDetailsMetadataEntityTypeEnum: String, Codable, Sendable {
    case dbsystem = "dbsystem"
}

public extension ListExternalLocationDetailsMetadataEntityTypeEnum {
    static var allValues: [ListExternalLocationDetailsMetadataEntityTypeEnum] { [.dbsystem] }
    static var allStringValues: [String] { ["dbsystem"] }
    static func fromString(_ value: String) -> ListExternalLocationDetailsMetadataEntityTypeEnum? { ListExternalLocationDetailsMetadataEntityTypeEnum(rawValue: value) }
}