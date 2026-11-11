import Foundation

// MARK: - ListKnowledgeBasesSortByEnum

public enum ListKnowledgeBasesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListKnowledgeBasesSortByEnum {
    static var allValues: [ListKnowledgeBasesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListKnowledgeBasesSortByEnum? { ListKnowledgeBasesSortByEnum(rawValue: value) }
}