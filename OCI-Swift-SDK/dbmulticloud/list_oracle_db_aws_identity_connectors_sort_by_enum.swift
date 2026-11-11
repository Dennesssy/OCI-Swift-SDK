import Foundation

// MARK: - ListOracleDbAwsIdentityConnectorsSortByEnum

public enum ListOracleDbAwsIdentityConnectorsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListOracleDbAwsIdentityConnectorsSortByEnum {
    static var allValues: [ListOracleDbAwsIdentityConnectorsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListOracleDbAwsIdentityConnectorsSortByEnum? { ListOracleDbAwsIdentityConnectorsSortByEnum(rawValue: value) }
}