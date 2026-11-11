import Foundation

// MARK: - GetMultiCloudResourceDiscoverySortOrderEnum

public enum GetMultiCloudResourceDiscoverySortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension GetMultiCloudResourceDiscoverySortOrderEnum {
    static var allValues: [GetMultiCloudResourceDiscoverySortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> GetMultiCloudResourceDiscoverySortOrderEnum? { GetMultiCloudResourceDiscoverySortOrderEnum(rawValue: value) }
}