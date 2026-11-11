import Foundation

// MARK: - ListOracleDbGcpIdentityConnectorsSortOrderEnum

public enum ListOracleDbGcpIdentityConnectorsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListOracleDbGcpIdentityConnectorsSortOrderEnum {
    static var allValues: [ListOracleDbGcpIdentityConnectorsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListOracleDbGcpIdentityConnectorsSortOrderEnum? { ListOracleDbGcpIdentityConnectorsSortOrderEnum(rawValue: value) }
}