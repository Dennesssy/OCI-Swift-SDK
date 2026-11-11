import Foundation

// MARK: - ToolInputToolInputTypeEnum

public enum ToolInputToolInputTypeEnum: String, Codable, Sendable {
    case genericToolInput = "GENERIC_TOOL_INPUT"
}

public extension ToolInputToolInputTypeEnum {
    static var allValues: [ToolInputToolInputTypeEnum] { [.genericToolInput] }
    static var allStringValues: [String] { ["GENERIC_TOOL_INPUT"] }
    static func fromString(_ value: String) -> ToolInputToolInputTypeEnum? { ToolInputToolInputTypeEnum(rawValue: value) }
}