import Foundation

// MARK: - ListOracleDbGcpKeysSortByEnum

public enum ListOracleDbGcpKeysSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListOracleDbGcpKeysSortByEnum {
    static var allValues: [ListOracleDbGcpKeysSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListOracleDbGcpKeysSortByEnum? { ListOracleDbGcpKeysSortByEnum(rawValue: value) }
}