import Foundation

// MARK: - ListNetworkSourcesSortByEnum

public enum ListNetworkSourcesSortByEnum: String, Codable, Sendable {
    case timecreated = "TIMECREATED"
    case name = "NAME"
}

public extension ListNetworkSourcesSortByEnum {
    static var allValues: [ListNetworkSourcesSortByEnum] { [.timecreated, .name] }
    static var allStringValues: [String] { ["TIMECREATED", "NAME"] }
    static func fromString(_ value: String) -> ListNetworkSourcesSortByEnum? { ListNetworkSourcesSortByEnum(rawValue: value) }
}