import Foundation

// MARK: - ListDigitalTwinAdaptersSortOrderEnum

public enum ListDigitalTwinAdaptersSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDigitalTwinAdaptersSortOrderEnum {
    static var allValues: [ListDigitalTwinAdaptersSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDigitalTwinAdaptersSortOrderEnum? { ListDigitalTwinAdaptersSortOrderEnum(rawValue: value) }
}