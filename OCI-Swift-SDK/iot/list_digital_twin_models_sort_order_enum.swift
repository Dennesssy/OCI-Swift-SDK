import Foundation

// MARK: - ListDigitalTwinModelsSortOrderEnum

public enum ListDigitalTwinModelsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDigitalTwinModelsSortOrderEnum {
    static var allValues: [ListDigitalTwinModelsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDigitalTwinModelsSortOrderEnum? { ListDigitalTwinModelsSortOrderEnum(rawValue: value) }
}