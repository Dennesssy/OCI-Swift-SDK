import Foundation

// MARK: - ListGdpPipelinesSortOrderEnum

public enum ListGdpPipelinesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListGdpPipelinesSortOrderEnum {
    static var allValues: [ListGdpPipelinesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListGdpPipelinesSortOrderEnum? { ListGdpPipelinesSortOrderEnum(rawValue: value) }
}