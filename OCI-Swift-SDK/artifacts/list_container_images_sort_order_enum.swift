import Foundation

// MARK: - ListContainerImagesSortOrderEnum

public enum ListContainerImagesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListContainerImagesSortOrderEnum {
    static var allValues: [ListContainerImagesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListContainerImagesSortOrderEnum? { ListContainerImagesSortOrderEnum(rawValue: value) }
}