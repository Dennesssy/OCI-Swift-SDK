import Foundation

// MARK: - ListOracleDbAzureBlobMountsSortByEnum

public enum ListOracleDbAzureBlobMountsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListOracleDbAzureBlobMountsSortByEnum {
    static var allValues: [ListOracleDbAzureBlobMountsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListOracleDbAzureBlobMountsSortByEnum? { ListOracleDbAzureBlobMountsSortByEnum(rawValue: value) }
}