import Foundation

// MARK: - GetOracleDbGcpKeyRingSortOrderEnum

public enum GetOracleDbGcpKeyRingSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension GetOracleDbGcpKeyRingSortOrderEnum {
    static var allValues: [GetOracleDbGcpKeyRingSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> GetOracleDbGcpKeyRingSortOrderEnum? { GetOracleDbGcpKeyRingSortOrderEnum(rawValue: value) }
}