import Foundation

// MARK: - ListLimitsIncreaseRequestsSortByEnum

public enum ListLimitsIncreaseRequestsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListLimitsIncreaseRequestsSortByEnum {
    static var allValues: [ListLimitsIncreaseRequestsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListLimitsIncreaseRequestsSortByEnum? { ListLimitsIncreaseRequestsSortByEnum(rawValue: value) }
}