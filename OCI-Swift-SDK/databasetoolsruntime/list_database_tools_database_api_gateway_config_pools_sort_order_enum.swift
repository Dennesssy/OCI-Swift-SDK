import Foundation

// MARK: - ListDatabaseToolsDatabaseApiGatewayConfigPoolsSortOrderEnum

public enum ListDatabaseToolsDatabaseApiGatewayConfigPoolsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDatabaseToolsDatabaseApiGatewayConfigPoolsSortOrderEnum {
    static var allValues: [ListDatabaseToolsDatabaseApiGatewayConfigPoolsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDatabaseToolsDatabaseApiGatewayConfigPoolsSortOrderEnum? { ListDatabaseToolsDatabaseApiGatewayConfigPoolsSortOrderEnum(rawValue: value) }
}