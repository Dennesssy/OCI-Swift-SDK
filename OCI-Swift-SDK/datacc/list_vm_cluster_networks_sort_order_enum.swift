import Foundation

// MARK: - ListVmClusterNetworksSortOrderEnum

public enum ListVmClusterNetworksSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListVmClusterNetworksSortOrderEnum {
    static var allValues: [ListVmClusterNetworksSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListVmClusterNetworksSortOrderEnum? { ListVmClusterNetworksSortOrderEnum(rawValue: value) }
}