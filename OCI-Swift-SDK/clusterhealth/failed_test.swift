import Foundation

// MARK: - FailedTest

public struct FailedTest: Codable, Sendable {

    public var testName: String?
    public var recommendedAction: String?

    private enum CodingKeys: String, CodingKey {
        case testName, recommendedAction
    }

    public init(
                testName: String? = nil,
                recommendedAction: String? = nil
    ) {
        self.testName = testName
        self.recommendedAction = recommendedAction
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension FailedTest: CustomStringConvertible {
    public var description: String { "FailedTest()" }
}