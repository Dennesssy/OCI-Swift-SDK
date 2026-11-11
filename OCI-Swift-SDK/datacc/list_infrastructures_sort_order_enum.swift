import Foundation

// MARK: - ListInfrastructuresSortOrderEnum

public enum ListInfrastructuresSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListInfrastructuresSortOrderEnum {
    static var allValues: [ListInfrastructuresSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListInfrastructuresSortOrderEnum? { ListInfrastructuresSortOrderEnum(rawValue: value) }
}