import Foundation

// MARK: - ListSandboxesSortOrderEnum

public enum ListSandboxesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListSandboxesSortOrderEnum {
    static var allValues: [ListSandboxesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListSandboxesSortOrderEnum? { ListSandboxesSortOrderEnum(rawValue: value) }
}