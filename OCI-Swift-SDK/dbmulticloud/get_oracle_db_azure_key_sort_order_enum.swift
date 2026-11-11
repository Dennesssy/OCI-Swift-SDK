import Foundation

// MARK: - GetOracleDbAzureKeySortOrderEnum

public enum GetOracleDbAzureKeySortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension GetOracleDbAzureKeySortOrderEnum {
    static var allValues: [GetOracleDbAzureKeySortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> GetOracleDbAzureKeySortOrderEnum? { GetOracleDbAzureKeySortOrderEnum(rawValue: value) }
}