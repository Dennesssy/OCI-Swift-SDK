import Foundation

// MARK: - ListLimitsIncreaseItemRequestsSortByEnum

public enum ListLimitsIncreaseItemRequestsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
}

public extension ListLimitsIncreaseItemRequestsSortByEnum {
    static var allValues: [ListLimitsIncreaseItemRequestsSortByEnum] { [.timecreated] }
    static var allStringValues: [String] { ["timeCreated"] }
    static func fromString(_ value: String) -> ListLimitsIncreaseItemRequestsSortByEnum? { ListLimitsIncreaseItemRequestsSortByEnum(rawValue: value) }
}