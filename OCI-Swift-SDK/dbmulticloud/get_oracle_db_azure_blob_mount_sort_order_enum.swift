import Foundation

// MARK: - GetOracleDbAzureBlobMountSortOrderEnum

public enum GetOracleDbAzureBlobMountSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension GetOracleDbAzureBlobMountSortOrderEnum {
    static var allValues: [GetOracleDbAzureBlobMountSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> GetOracleDbAzureBlobMountSortOrderEnum? { GetOracleDbAzureBlobMountSortOrderEnum(rawValue: value) }
}