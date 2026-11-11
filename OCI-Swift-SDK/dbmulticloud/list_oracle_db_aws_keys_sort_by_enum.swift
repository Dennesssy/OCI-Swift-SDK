import Foundation

// MARK: - ListOracleDbAwsKeysSortByEnum

public enum ListOracleDbAwsKeysSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListOracleDbAwsKeysSortByEnum {
    static var allValues: [ListOracleDbAwsKeysSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListOracleDbAwsKeysSortByEnum? { ListOracleDbAwsKeysSortByEnum(rawValue: value) }
}