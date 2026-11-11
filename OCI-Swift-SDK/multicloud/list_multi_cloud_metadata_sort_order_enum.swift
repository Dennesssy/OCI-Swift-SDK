import Foundation

// MARK: - ListMultiCloudMetadataSortOrderEnum

public enum ListMultiCloudMetadataSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListMultiCloudMetadataSortOrderEnum {
    static var allValues: [ListMultiCloudMetadataSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListMultiCloudMetadataSortOrderEnum? { ListMultiCloudMetadataSortOrderEnum(rawValue: value) }
}