import Foundation

// MARK: - ListBuildPipelinesSortOrderEnum

public enum ListBuildPipelinesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListBuildPipelinesSortOrderEnum {
    static var allValues: [ListBuildPipelinesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListBuildPipelinesSortOrderEnum? { ListBuildPipelinesSortOrderEnum(rawValue: value) }
}