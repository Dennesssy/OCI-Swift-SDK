import Foundation

// MARK: - ListBuildRunSnapshotsSortOrderEnum

public enum ListBuildRunSnapshotsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListBuildRunSnapshotsSortOrderEnum {
    static var allValues: [ListBuildRunSnapshotsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListBuildRunSnapshotsSortOrderEnum? { ListBuildRunSnapshotsSortOrderEnum(rawValue: value) }
}