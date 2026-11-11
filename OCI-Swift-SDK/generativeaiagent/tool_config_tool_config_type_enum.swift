import Foundation

// MARK: - ToolConfigToolConfigTypeEnum

public enum ToolConfigToolConfigTypeEnum: String, Codable, Sendable {
    case sqlToolConfig = "SQL_TOOL_CONFIG"
    case ragToolConfig = "RAG_TOOL_CONFIG"
    case functionCallingToolConfig = "FUNCTION_CALLING_TOOL_CONFIG"
    case httpEndpointToolConfig = "HTTP_ENDPOINT_TOOL_CONFIG"
    case agentToolConfig = "AGENT_TOOL_CONFIG"
}

public extension ToolConfigToolConfigTypeEnum {
    static var allValues: [ToolConfigToolConfigTypeEnum] { [.sqlToolConfig, .ragToolConfig, .functionCallingToolConfig, .httpEndpointToolConfig, .agentToolConfig] }
    static var allStringValues: [String] { ["SQL_TOOL_CONFIG", "RAG_TOOL_CONFIG", "FUNCTION_CALLING_TOOL_CONFIG", "HTTP_ENDPOINT_TOOL_CONFIG", "AGENT_TOOL_CONFIG"] }
    static func fromString(_ value: String) -> ToolConfigToolConfigTypeEnum? { ToolConfigToolConfigTypeEnum(rawValue: value) }
}