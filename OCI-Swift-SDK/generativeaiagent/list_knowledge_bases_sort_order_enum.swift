import Foundation

// MARK: - ListKnowledgeBasesSortOrderEnum

public enum ListKnowledgeBasesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListKnowledgeBasesSortOrderEnum {
    static var allValues: [ListKnowledgeBasesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListKnowledgeBasesSortOrderEnum? { ListKnowledgeBasesSortOrderEnum(rawValue: value) }
}