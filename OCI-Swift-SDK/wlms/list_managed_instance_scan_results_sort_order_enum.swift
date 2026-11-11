import Foundation

// MARK: - ListManagedInstanceScanResultsSortOrderEnum

public enum ListManagedInstanceScanResultsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListManagedInstanceScanResultsSortOrderEnum {
    static var allValues: [ListManagedInstanceScanResultsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListManagedInstanceScanResultsSortOrderEnum? { ListManagedInstanceScanResultsSortOrderEnum(rawValue: value) }
}