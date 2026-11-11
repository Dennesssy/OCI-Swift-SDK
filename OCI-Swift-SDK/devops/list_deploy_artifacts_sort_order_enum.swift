import Foundation

// MARK: - ListDeployArtifactsSortOrderEnum

public enum ListDeployArtifactsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDeployArtifactsSortOrderEnum {
    static var allValues: [ListDeployArtifactsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDeployArtifactsSortOrderEnum? { ListDeployArtifactsSortOrderEnum(rawValue: value) }
}