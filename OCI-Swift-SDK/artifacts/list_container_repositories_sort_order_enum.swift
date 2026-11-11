import Foundation

// MARK: - ListContainerRepositoriesSortOrderEnum

public enum ListContainerRepositoriesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListContainerRepositoriesSortOrderEnum {
    static var allValues: [ListContainerRepositoriesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListContainerRepositoriesSortOrderEnum? { ListContainerRepositoriesSortOrderEnum(rawValue: value) }
}