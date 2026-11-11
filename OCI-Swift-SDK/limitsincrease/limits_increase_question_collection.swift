import Foundation

// MARK: - LimitsIncreaseQuestionCollection

public struct LimitsIncreaseQuestionCollection: Codable, Sendable {

    public var items: [LimitsIncreaseQuestionSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [LimitsIncreaseQuestionSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LimitsIncreaseQuestionCollection: CustomStringConvertible {
    public var description: String { "LimitsIncreaseQuestionCollection()" }
}