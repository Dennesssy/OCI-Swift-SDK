import Foundation

// MARK: - ListPublicVantagePointsSortByEnum

public enum ListPublicVantagePointsSortByEnum: String, Codable, Sendable {
    case name = "name"
    case displayname = "displayName"
}

public extension ListPublicVantagePointsSortByEnum {
    static var allValues: [ListPublicVantagePointsSortByEnum] { [.name, .displayname] }
    static var allStringValues: [String] { ["name", "displayName"] }
    static func fromString(_ value: String) -> ListPublicVantagePointsSortByEnum? { ListPublicVantagePointsSortByEnum(rawValue: value) }
}