import Foundation

// MARK: - ListOracleDbGcpIdentityConnectorsSortByEnum

public enum ListOracleDbGcpIdentityConnectorsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListOracleDbGcpIdentityConnectorsSortByEnum {
    static var allValues: [ListOracleDbGcpIdentityConnectorsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListOracleDbGcpIdentityConnectorsSortByEnum? { ListOracleDbGcpIdentityConnectorsSortByEnum(rawValue: value) }
}