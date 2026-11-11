import Foundation

// MARK: - ListBatchTaskEnvironmentsSortOrderEnum

public enum ListBatchTaskEnvironmentsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListBatchTaskEnvironmentsSortOrderEnum {
    static var allValues: [ListBatchTaskEnvironmentsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListBatchTaskEnvironmentsSortOrderEnum? { ListBatchTaskEnvironmentsSortOrderEnum(rawValue: value) }
}