import Foundation

// MARK: - ToolOutputToolOutputTypeEnum

public enum ToolOutputToolOutputTypeEnum: String, Codable, Sendable {
    case genericToolOutput = "GENERIC_TOOL_OUTPUT"
    case sqlToolOutput = "SQL_TOOL_OUTPUT"
    case ragToolOutput = "RAG_TOOL_OUTPUT"
}

public extension ToolOutputToolOutputTypeEnum {
    static var allValues: [ToolOutputToolOutputTypeEnum] { [.genericToolOutput, .sqlToolOutput, .ragToolOutput] }
    static var allStringValues: [String] { ["GENERIC_TOOL_OUTPUT", "SQL_TOOL_OUTPUT", "RAG_TOOL_OUTPUT"] }
    static func fromString(_ value: String) -> ToolOutputToolOutputTypeEnum? { ToolOutputToolOutputTypeEnum(rawValue: value) }
}