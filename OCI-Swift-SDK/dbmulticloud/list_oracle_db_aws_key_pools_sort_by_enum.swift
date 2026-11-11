import Foundation

// MARK: - ListOracleDbAwsKeyPoolsSortByEnum

public enum ListOracleDbAwsKeyPoolsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListOracleDbAwsKeyPoolsSortByEnum {
    static var allValues: [ListOracleDbAwsKeyPoolsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListOracleDbAwsKeyPoolsSortByEnum? { ListOracleDbAwsKeyPoolsSortByEnum(rawValue: value) }
}