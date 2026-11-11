import Foundation

// MARK: - ReviewPullRequestDetails

public struct ReviewPullRequestDetails: Codable, Sendable {

    public var action: ReviewPullRequestDetailsActionEnum

    private enum CodingKeys: String, CodingKey {
        case action
    }

    public init(
                action: ReviewPullRequestDetailsActionEnum
    ) {
        self.action = action
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ReviewPullRequestDetails: CustomStringConvertible {
    public var description: String { "ReviewPullRequestDetails()" }
}