import Foundation

// MARK: - ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsSortOrderEnum

public enum ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsSortOrderEnum {
    static var allValues: [ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsSortOrderEnum? { ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsSortOrderEnum(rawValue: value) }
}