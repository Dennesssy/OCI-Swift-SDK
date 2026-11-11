import Foundation

// MARK: - LimitsIncreaseItemQuestionRequest

public struct LimitsIncreaseItemQuestionRequest: Codable, Sendable {

    public var id: String?
    public var questionResponse: String?

    private enum CodingKeys: String, CodingKey {
        case id, questionResponse
    }

    public init(
                id: String? = nil,
                questionResponse: String? = nil
    ) {
        self.id = id
        self.questionResponse = questionResponse
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LimitsIncreaseItemQuestionRequest: CustomStringConvertible {
    public var description: String { "LimitsIncreaseItemQuestionRequest()" }
}