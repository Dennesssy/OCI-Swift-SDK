import Foundation

// MARK: - ListTriggersSortOrderEnum

public enum ListTriggersSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListTriggersSortOrderEnum {
    static var allValues: [ListTriggersSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListTriggersSortOrderEnum? { ListTriggersSortOrderEnum(rawValue: value) }
}