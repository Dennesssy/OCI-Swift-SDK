import Foundation

// MARK: - LlmSelectionLlmSelectionTypeEnum

public enum LlmSelectionLlmSelectionTypeEnum: String, Codable, Sendable {
    case `default` = "DEFAULT"
    case customGenAiModel = "CUSTOM_GEN_AI_MODEL"
    case customGenAiEndpoint = "CUSTOM_GEN_AI_ENDPOINT"
}

public extension LlmSelectionLlmSelectionTypeEnum {
    static var allValues: [LlmSelectionLlmSelectionTypeEnum] { [.`default`, .customGenAiModel, .customGenAiEndpoint] }
    static var allStringValues: [String] { ["DEFAULT", "CUSTOM_GEN_AI_MODEL", "CUSTOM_GEN_AI_ENDPOINT"] }
    static func fromString(_ value: String) -> LlmSelectionLlmSelectionTypeEnum? { LlmSelectionLlmSelectionTypeEnum(rawValue: value) }
}