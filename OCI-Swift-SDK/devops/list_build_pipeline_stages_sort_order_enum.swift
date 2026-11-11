import Foundation

// MARK: - ListBuildPipelineStagesSortOrderEnum

public enum ListBuildPipelineStagesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListBuildPipelineStagesSortOrderEnum {
    static var allValues: [ListBuildPipelineStagesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListBuildPipelineStagesSortOrderEnum? { ListBuildPipelineStagesSortOrderEnum(rawValue: value) }
}