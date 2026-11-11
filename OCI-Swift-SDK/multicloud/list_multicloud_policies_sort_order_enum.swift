import Foundation

// MARK: - ListMulticloudPoliciesSortOrderEnum

public enum ListMulticloudPoliciesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListMulticloudPoliciesSortOrderEnum {
    static var allValues: [ListMulticloudPoliciesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListMulticloudPoliciesSortOrderEnum? { ListMulticloudPoliciesSortOrderEnum(rawValue: value) }
}