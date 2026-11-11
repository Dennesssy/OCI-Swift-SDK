import Foundation

// MARK: - ListGatewaysSortByEnum

public enum ListGatewaysSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListGatewaysSortByEnum {
    static var allValues: [ListGatewaysSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListGatewaysSortByEnum? { ListGatewaysSortByEnum(rawValue: value) }
}