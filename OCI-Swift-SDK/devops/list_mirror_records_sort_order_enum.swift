import Foundation

// MARK: - ListMirrorRecordsSortOrderEnum

public enum ListMirrorRecordsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListMirrorRecordsSortOrderEnum {
    static var allValues: [ListMirrorRecordsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListMirrorRecordsSortOrderEnum? { ListMirrorRecordsSortOrderEnum(rawValue: value) }
}