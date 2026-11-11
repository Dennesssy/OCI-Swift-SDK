import Foundation

// MARK: - ListOracleDbAzureConnectorsSortByEnum

public enum ListOracleDbAzureConnectorsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListOracleDbAzureConnectorsSortByEnum {
    static var allValues: [ListOracleDbAzureConnectorsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListOracleDbAzureConnectorsSortByEnum? { ListOracleDbAzureConnectorsSortByEnum(rawValue: value) }
}