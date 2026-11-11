import Foundation

// MARK: - ListOracleDbAwsIdentityConnectorsSortOrderEnum

public enum ListOracleDbAwsIdentityConnectorsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListOracleDbAwsIdentityConnectorsSortOrderEnum {
    static var allValues: [ListOracleDbAwsIdentityConnectorsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListOracleDbAwsIdentityConnectorsSortOrderEnum? { ListOracleDbAwsIdentityConnectorsSortOrderEnum(rawValue: value) }
}