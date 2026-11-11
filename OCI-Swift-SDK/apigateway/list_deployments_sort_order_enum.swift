import Foundation

// MARK: - ListDeploymentsSortOrderEnum

public enum ListDeploymentsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDeploymentsSortOrderEnum {
    static var allValues: [ListDeploymentsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDeploymentsSortOrderEnum? { ListDeploymentsSortOrderEnum(rawValue: value) }
}