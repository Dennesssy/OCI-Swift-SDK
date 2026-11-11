import Foundation

// MARK: - ListWlsDomainScanResultsSortOrderEnum

public enum ListWlsDomainScanResultsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListWlsDomainScanResultsSortOrderEnum {
    static var allValues: [ListWlsDomainScanResultsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListWlsDomainScanResultsSortOrderEnum? { ListWlsDomainScanResultsSortOrderEnum(rawValue: value) }
}