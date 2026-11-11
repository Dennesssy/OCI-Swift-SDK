import Foundation

// MARK: - ListPullRequestAttachmentsSortOrderEnum

public enum ListPullRequestAttachmentsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListPullRequestAttachmentsSortOrderEnum {
    static var allValues: [ListPullRequestAttachmentsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListPullRequestAttachmentsSortOrderEnum? { ListPullRequestAttachmentsSortOrderEnum(rawValue: value) }
}