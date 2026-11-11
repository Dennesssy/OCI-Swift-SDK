import Foundation

// MARK: - ListGenericArtifactsSortOrderEnum

public enum ListGenericArtifactsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListGenericArtifactsSortOrderEnum {
    static var allValues: [ListGenericArtifactsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListGenericArtifactsSortOrderEnum? { ListGenericArtifactsSortOrderEnum(rawValue: value) }
}