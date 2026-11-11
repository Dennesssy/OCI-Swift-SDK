import Foundation

// MARK: - LimitsIncreaseQuestionSummary

public struct LimitsIncreaseQuestionSummary: Codable, Sendable {

    public var id: String?
    public var service: String?
    public var questionText: String?
    public var questionType: LimitsIncreaseQuestionSummaryQuestionTypeEnum
    public var isRequired: Bool?
    public var limitName: String?
    public var options: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case id, service, questionText, questionType, isRequired, limitName, options
    }

    public init(
                id: String? = nil,
                service: String? = nil,
                questionText: String? = nil,
                questionType: LimitsIncreaseQuestionSummaryQuestionTypeEnum,
                isRequired: Bool? = nil,
                limitName: String? = nil,
                options: [String: String]? = nil
    ) {
        self.id = id
        self.service = service
        self.questionText = questionText
        self.questionType = questionType
        self.isRequired = isRequired
        self.limitName = limitName
        self.options = options
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LimitsIncreaseQuestionSummary: CustomStringConvertible {
    public var description: String { "LimitsIncreaseQuestionSummary()" }
}