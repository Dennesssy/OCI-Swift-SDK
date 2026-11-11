import Foundation

// MARK: - ToolRuntimeConfigToolRuntimeConfigTypeEnum

public enum ToolRuntimeConfigToolRuntimeConfigTypeEnum: String, Codable, Sendable {
    case rag = "RAG"
    case sqlSmall = "SQL_SMALL"
    case sqlLarge = "SQL_LARGE"
}

public extension ToolRuntimeConfigToolRuntimeConfigTypeEnum {
    static var allValues: [ToolRuntimeConfigToolRuntimeConfigTypeEnum] { [.rag, .sqlSmall, .sqlLarge] }
    static var allStringValues: [String] { ["RAG", "SQL_SMALL", "SQL_LARGE"] }
    static func fromString(_ value: String) -> ToolRuntimeConfigToolRuntimeConfigTypeEnum? { ToolRuntimeConfigToolRuntimeConfigTypeEnum(rawValue: value) }
}