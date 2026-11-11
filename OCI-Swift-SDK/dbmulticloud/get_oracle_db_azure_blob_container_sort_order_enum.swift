import Foundation

// MARK: - GetOracleDbAzureBlobContainerSortOrderEnum

public enum GetOracleDbAzureBlobContainerSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension GetOracleDbAzureBlobContainerSortOrderEnum {
    static var allValues: [GetOracleDbAzureBlobContainerSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> GetOracleDbAzureBlobContainerSortOrderEnum? { GetOracleDbAzureBlobContainerSortOrderEnum(rawValue: value) }
}