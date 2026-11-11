import Foundation

// MARK: - ListDigitalTwinRelationshipsSortOrderEnum

public enum ListDigitalTwinRelationshipsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDigitalTwinRelationshipsSortOrderEnum {
    static var allValues: [ListDigitalTwinRelationshipsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDigitalTwinRelationshipsSortOrderEnum? { ListDigitalTwinRelationshipsSortOrderEnum(rawValue: value) }
}