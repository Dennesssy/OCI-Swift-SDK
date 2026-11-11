import Foundation

// MARK: - ListOracleDbAzureVaultsSortByEnum

public enum ListOracleDbAzureVaultsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListOracleDbAzureVaultsSortByEnum {
    static var allValues: [ListOracleDbAzureVaultsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListOracleDbAzureVaultsSortByEnum? { ListOracleDbAzureVaultsSortByEnum(rawValue: value) }
}