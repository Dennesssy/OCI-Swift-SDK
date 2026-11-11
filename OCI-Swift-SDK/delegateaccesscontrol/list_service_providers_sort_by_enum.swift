import Foundation

// MARK: - ListServiceProvidersSortByEnum

public enum ListServiceProvidersSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListServiceProvidersSortByEnum {
    static var allValues: [ListServiceProvidersSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListServiceProvidersSortByEnum? { ListServiceProvidersSortByEnum(rawValue: value) }
}