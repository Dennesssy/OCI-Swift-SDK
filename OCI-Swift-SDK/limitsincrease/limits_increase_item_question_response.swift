import Foundation

// MARK: - LimitsIncreaseItemQuestionResponse

public struct LimitsIncreaseItemQuestionResponse: Codable, Sendable {

    public var id: String?
    public var questionText: String?
    public var questionResponse: String?

    private enum CodingKeys: String, CodingKey {
        case id, questionText, questionResponse
    }

    public init(
                id: String? = nil,
                questionText: String? = nil,
                questionResponse: String? = nil
    ) {
        self.id = id
        self.questionText = questionText
        self.questionResponse = questionResponse
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LimitsIncreaseItemQuestionResponse: CustomStringConvertible {
    public var description: String { "LimitsIncreaseItemQuestionResponse()" }
}