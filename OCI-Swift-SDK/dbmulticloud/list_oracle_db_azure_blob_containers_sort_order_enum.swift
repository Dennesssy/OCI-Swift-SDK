import Foundation

// MARK: - ListOracleDbAzureBlobContainersSortOrderEnum

public enum ListOracleDbAzureBlobContainersSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListOracleDbAzureBlobContainersSortOrderEnum {
    static var allValues: [ListOracleDbAzureBlobContainersSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListOracleDbAzureBlobContainersSortOrderEnum? { ListOracleDbAzureBlobContainersSortOrderEnum(rawValue: value) }
}