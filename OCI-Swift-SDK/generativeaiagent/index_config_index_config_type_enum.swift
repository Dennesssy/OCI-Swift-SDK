import Foundation

// MARK: - IndexConfigIndexConfigTypeEnum

public enum IndexConfigIndexConfigTypeEnum: String, Codable, Sendable {
    case defaultIndexConfig = "DEFAULT_INDEX_CONFIG"
    case ociOpenSearchIndexConfig = "OCI_OPEN_SEARCH_INDEX_CONFIG"
    case ociDatabaseConfig = "OCI_DATABASE_CONFIG"
}

public extension IndexConfigIndexConfigTypeEnum {
    static var allValues: [IndexConfigIndexConfigTypeEnum] { [.defaultIndexConfig, .ociOpenSearchIndexConfig, .ociDatabaseConfig] }
    static var allStringValues: [String] { ["DEFAULT_INDEX_CONFIG", "OCI_OPEN_SEARCH_INDEX_CONFIG", "OCI_DATABASE_CONFIG"] }
    static func fromString(_ value: String) -> IndexConfigIndexConfigTypeEnum? { IndexConfigIndexConfigTypeEnum(rawValue: value) }
}