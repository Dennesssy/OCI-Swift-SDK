import Foundation

// MARK: - ListDeployStagesSortOrderEnum

public enum ListDeployStagesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDeployStagesSortOrderEnum {
    static var allValues: [ListDeployStagesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDeployStagesSortOrderEnum? { ListDeployStagesSortOrderEnum(rawValue: value) }
}