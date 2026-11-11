import Foundation

// MARK: - GetOracleDbAwsKeySortOrderEnum

public enum GetOracleDbAwsKeySortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension GetOracleDbAwsKeySortOrderEnum {
    static var allValues: [GetOracleDbAwsKeySortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> GetOracleDbAwsKeySortOrderEnum? { GetOracleDbAwsKeySortOrderEnum(rawValue: value) }
}