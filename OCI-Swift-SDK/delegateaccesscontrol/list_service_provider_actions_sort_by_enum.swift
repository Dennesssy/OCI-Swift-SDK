import Foundation

// MARK: - ListServiceProviderActionsSortByEnum

public enum ListServiceProviderActionsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case name = "name"
}

public extension ListServiceProviderActionsSortByEnum {
    static var allValues: [ListServiceProviderActionsSortByEnum] { [.timecreated, .name] }
    static var allStringValues: [String] { ["timeCreated", "name"] }
    static func fromString(_ value: String) -> ListServiceProviderActionsSortByEnum? { ListServiceProviderActionsSortByEnum(rawValue: value) }
}