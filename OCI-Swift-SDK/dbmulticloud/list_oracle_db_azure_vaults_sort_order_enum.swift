import Foundation

// MARK: - ListOracleDbAzureVaultsSortOrderEnum

public enum ListOracleDbAzureVaultsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListOracleDbAzureVaultsSortOrderEnum {
    static var allValues: [ListOracleDbAzureVaultsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListOracleDbAzureVaultsSortOrderEnum? { ListOracleDbAzureVaultsSortOrderEnum(rawValue: value) }
}