import Foundation

// MARK: - ListOracleDbAzureVaultAssociationsSortOrderEnum

public enum ListOracleDbAzureVaultAssociationsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListOracleDbAzureVaultAssociationsSortOrderEnum {
    static var allValues: [ListOracleDbAzureVaultAssociationsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListOracleDbAzureVaultAssociationsSortOrderEnum? { ListOracleDbAzureVaultAssociationsSortOrderEnum(rawValue: value) }
}