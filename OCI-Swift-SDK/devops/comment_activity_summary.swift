import Foundation

// MARK: - CommentActivitySummary

public struct CommentActivitySummary: Codable, Sendable {

    public var id: String?
    public var principal: PrincipalDetails?
    public var pullRequestId: String?
    public var timeOccurred: Date?
    public var commentId: String?

    private enum CodingKeys: String, CodingKey {
        case id, principal, pullRequestId, timeOccurred, commentId
    }

    public init(
                id: String? = nil,
                principal: PrincipalDetails? = nil,
                pullRequestId: String? = nil,
                timeOccurred: Date? = nil,
                commentId: String? = nil
    ) {
        self.id = id
        self.principal = principal
        self.pullRequestId = pullRequestId
        self.timeOccurred = timeOccurred
        self.commentId = commentId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CommentActivitySummary: CustomStringConvertible {
    public var description: String { "CommentActivitySummary()" }
}