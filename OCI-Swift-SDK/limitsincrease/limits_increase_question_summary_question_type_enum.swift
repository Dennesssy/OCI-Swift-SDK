import Foundation

// MARK: - LimitsIncreaseQuestionSummaryQuestionTypeEnum

public enum LimitsIncreaseQuestionSummaryQuestionTypeEnum: String, Codable, Sendable {
    case text = "TEXT"
    case number = "NUMBER"
    case radio = "RADIO"
    case checkbox = "CHECKBOX"
}

public extension LimitsIncreaseQuestionSummaryQuestionTypeEnum {
    static var allValues: [LimitsIncreaseQuestionSummaryQuestionTypeEnum] { [.text, .number, .radio, .checkbox] }
    static var allStringValues: [String] { ["TEXT", "NUMBER", "RADIO", "CHECKBOX"] }
    static func fromString(_ value: String) -> LimitsIncreaseQuestionSummaryQuestionTypeEnum? { LimitsIncreaseQuestionSummaryQuestionTypeEnum(rawValue: value) }
}