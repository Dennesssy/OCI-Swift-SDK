import Foundation

// MARK: - ListMultiCloudResourceDiscoveriesSortOrderEnum

public enum ListMultiCloudResourceDiscoveriesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListMultiCloudResourceDiscoveriesSortOrderEnum {
    static var allValues: [ListMultiCloudResourceDiscoveriesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListMultiCloudResourceDiscoveriesSortOrderEnum? { ListMultiCloudResourceDiscoveriesSortOrderEnum(rawValue: value) }
}