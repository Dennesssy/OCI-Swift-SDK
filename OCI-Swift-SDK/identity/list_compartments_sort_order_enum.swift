import Foundation

// MARK: - ListCompartmentsSortOrderEnum

public enum ListCompartmentsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListCompartmentsSortOrderEnum {
    static var allValues: [ListCompartmentsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListCompartmentsSortOrderEnum? { ListCompartmentsSortOrderEnum(rawValue: value) }
}