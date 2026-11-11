import Foundation

// MARK: - ListMfaTotpDevicesSortOrderEnum

public enum ListMfaTotpDevicesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListMfaTotpDevicesSortOrderEnum {
    static var allValues: [ListMfaTotpDevicesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListMfaTotpDevicesSortOrderEnum? { ListMfaTotpDevicesSortOrderEnum(rawValue: value) }
}