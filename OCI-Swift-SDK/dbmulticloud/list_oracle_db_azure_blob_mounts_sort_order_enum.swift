import Foundation

// MARK: - ListOracleDbAzureBlobMountsSortOrderEnum

public enum ListOracleDbAzureBlobMountsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListOracleDbAzureBlobMountsSortOrderEnum {
    static var allValues: [ListOracleDbAzureBlobMountsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListOracleDbAzureBlobMountsSortOrderEnum? { ListOracleDbAzureBlobMountsSortOrderEnum(rawValue: value) }
}