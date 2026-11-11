import Foundation

// MARK: - ListApplicablePatchesSortOrderEnum

public enum ListApplicablePatchesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListApplicablePatchesSortOrderEnum {
    static var allValues: [ListApplicablePatchesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListApplicablePatchesSortOrderEnum? { ListApplicablePatchesSortOrderEnum(rawValue: value) }
}