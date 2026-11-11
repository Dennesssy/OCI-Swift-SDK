import Foundation

// MARK: - ListDeployEnvironmentsSortOrderEnum

public enum ListDeployEnvironmentsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDeployEnvironmentsSortOrderEnum {
    static var allValues: [ListDeployEnvironmentsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDeployEnvironmentsSortOrderEnum? { ListDeployEnvironmentsSortOrderEnum(rawValue: value) }
}