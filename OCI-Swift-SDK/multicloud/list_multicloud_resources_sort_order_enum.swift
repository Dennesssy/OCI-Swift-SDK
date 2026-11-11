import Foundation

// MARK: - ListMulticloudResourcesSortOrderEnum

public enum ListMulticloudResourcesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListMulticloudResourcesSortOrderEnum {
    static var allValues: [ListMulticloudResourcesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListMulticloudResourcesSortOrderEnum? { ListMulticloudResourcesSortOrderEnum(rawValue: value) }
}