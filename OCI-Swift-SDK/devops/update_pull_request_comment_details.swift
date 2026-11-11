import Foundation

// MARK: - UpdatePullRequestCommentDetails

public struct UpdatePullRequestCommentDetails: Codable, Sendable {

    public var data: String?

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public init(
                data: String? = nil
    ) {
        self.data = data
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdatePullRequestCommentDetails: CustomStringConvertible {
    public var description: String { "UpdatePullRequestCommentDetails()" }
}