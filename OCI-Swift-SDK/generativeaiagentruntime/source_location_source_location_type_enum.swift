import Foundation

// MARK: - SourceLocationSourceLocationTypeEnum

public enum SourceLocationSourceLocationTypeEnum: String, Codable, Sendable {
    case objectStorage = "OCI_OBJECT_STORAGE"
    case openSearch = "OCI_OPEN_SEARCH"
    case database = "OCI_DATABASE"
}

public extension SourceLocationSourceLocationTypeEnum {
    static var allValues: [SourceLocationSourceLocationTypeEnum] { [.objectStorage, .openSearch, .database] }
    static var allStringValues: [String] { ["OCI_OBJECT_STORAGE", "OCI_OPEN_SEARCH", "OCI_DATABASE"] }
    static func fromString(_ value: String) -> SourceLocationSourceLocationTypeEnum? { SourceLocationSourceLocationTypeEnum(rawValue: value) }
}