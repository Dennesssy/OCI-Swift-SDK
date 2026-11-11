import Foundation

// MARK: - Recommendation

public struct Recommendation: Codable, Sendable {

    public var type: RecommendationTypeEnum
    public var testName: String?
    public var issue: String?
    public var suggestion: String?
    public var action: String?
    public var faultCode: String?

    private enum CodingKeys: String, CodingKey {
        case type, testName, issue, suggestion, action, faultCode
    }

    public init(
                type: RecommendationTypeEnum,
                testName: String? = nil,
                issue: String? = nil,
                suggestion: String? = nil,
                action: String? = nil,
                faultCode: String? = nil
    ) {
        self.type = type
        self.testName = testName
        self.issue = issue
        self.suggestion = suggestion
        self.action = action
        self.faultCode = faultCode
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Recommendation: CustomStringConvertible {
    public var description: String { "Recommendation()" }
}