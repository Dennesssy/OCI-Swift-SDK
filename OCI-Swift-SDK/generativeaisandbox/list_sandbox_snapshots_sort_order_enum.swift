import Foundation

// MARK: - ListSandboxSnapshotsSortOrderEnum

public enum ListSandboxSnapshotsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListSandboxSnapshotsSortOrderEnum {
    static var allValues: [ListSandboxSnapshotsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListSandboxSnapshotsSortOrderEnum? { ListSandboxSnapshotsSortOrderEnum(rawValue: value) }
}