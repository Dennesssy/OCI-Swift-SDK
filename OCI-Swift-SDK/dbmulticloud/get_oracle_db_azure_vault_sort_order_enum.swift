import Foundation

// MARK: - GetOracleDbAzureVaultSortOrderEnum

public enum GetOracleDbAzureVaultSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension GetOracleDbAzureVaultSortOrderEnum {
    static var allValues: [GetOracleDbAzureVaultSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> GetOracleDbAzureVaultSortOrderEnum? { GetOracleDbAzureVaultSortOrderEnum(rawValue: value) }
}