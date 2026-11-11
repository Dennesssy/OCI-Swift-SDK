import Foundation

// MARK: - ListVmInstancesSortOrderEnum

public enum ListVmInstancesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListVmInstancesSortOrderEnum {
    static var allValues: [ListVmInstancesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListVmInstancesSortOrderEnum? { ListVmInstancesSortOrderEnum(rawValue: value) }
}