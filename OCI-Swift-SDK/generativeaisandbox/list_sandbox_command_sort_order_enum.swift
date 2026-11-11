import Foundation

// MARK: - ListSandboxCommandSortOrderEnum

public enum ListSandboxCommandSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListSandboxCommandSortOrderEnum {
    static var allValues: [ListSandboxCommandSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListSandboxCommandSortOrderEnum? { ListSandboxCommandSortOrderEnum(rawValue: value) }
}