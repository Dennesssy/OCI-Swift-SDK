import Foundation

// MARK: - ListOracleDbGcpKeyRingsSortByEnum

public enum ListOracleDbGcpKeyRingsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListOracleDbGcpKeyRingsSortByEnum {
    static var allValues: [ListOracleDbGcpKeyRingsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListOracleDbGcpKeyRingsSortByEnum? { ListOracleDbGcpKeyRingsSortByEnum(rawValue: value) }
}