import Foundation

// MARK: - ListOracleDbAzureVaultAssociationsSortByEnum

public enum ListOracleDbAzureVaultAssociationsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListOracleDbAzureVaultAssociationsSortByEnum {
    static var allValues: [ListOracleDbAzureVaultAssociationsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListOracleDbAzureVaultAssociationsSortByEnum? { ListOracleDbAzureVaultAssociationsSortByEnum(rawValue: value) }
}