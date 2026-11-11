import Foundation

// MARK: - ListOracleDbAzureKeysSortByEnum

public enum ListOracleDbAzureKeysSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListOracleDbAzureKeysSortByEnum {
    static var allValues: [ListOracleDbAzureKeysSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListOracleDbAzureKeysSortByEnum? { ListOracleDbAzureKeysSortByEnum(rawValue: value) }
}