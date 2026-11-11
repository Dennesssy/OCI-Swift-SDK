import Foundation

// MARK: - ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsSortOrderEnum

public enum ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsSortOrderEnum {
    static var allValues: [ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsSortOrderEnum? { ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsSortOrderEnum(rawValue: value) }
}