import Foundation

// MARK: - ListOracleDbAzureBlobContainersSortByEnum

public enum ListOracleDbAzureBlobContainersSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListOracleDbAzureBlobContainersSortByEnum {
    static var allValues: [ListOracleDbAzureBlobContainersSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListOracleDbAzureBlobContainersSortByEnum? { ListOracleDbAzureBlobContainersSortByEnum(rawValue: value) }
}