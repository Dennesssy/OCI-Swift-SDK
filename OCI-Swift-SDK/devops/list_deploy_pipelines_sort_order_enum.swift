import Foundation

// MARK: - ListDeployPipelinesSortOrderEnum

public enum ListDeployPipelinesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDeployPipelinesSortOrderEnum {
    static var allValues: [ListDeployPipelinesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDeployPipelinesSortOrderEnum? { ListDeployPipelinesSortOrderEnum(rawValue: value) }
}