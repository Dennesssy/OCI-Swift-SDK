import Foundation

// MARK: - ListDigitalTwinInstancesSortOrderEnum

public enum ListDigitalTwinInstancesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDigitalTwinInstancesSortOrderEnum {
    static var allValues: [ListDigitalTwinInstancesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDigitalTwinInstancesSortOrderEnum? { ListDigitalTwinInstancesSortOrderEnum(rawValue: value) }
}