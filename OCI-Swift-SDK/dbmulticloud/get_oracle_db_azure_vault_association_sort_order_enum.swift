import Foundation

// MARK: - GetOracleDbAzureVaultAssociationSortOrderEnum

public enum GetOracleDbAzureVaultAssociationSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension GetOracleDbAzureVaultAssociationSortOrderEnum {
    static var allValues: [GetOracleDbAzureVaultAssociationSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> GetOracleDbAzureVaultAssociationSortOrderEnum? { GetOracleDbAzureVaultAssociationSortOrderEnum(rawValue: value) }
}