import Foundation

// MARK: - DeletePullRequestCommentRequest

public struct DeletePullRequestCommentRequest: Codable, Sendable {
    public var pullRequestId: String?
    public var commentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, commentId, ifMatch, opcRequestId
    }

    public init(
                pullRequestId: String? = nil,
                commentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.pullRequestId = pullRequestId
        self.commentId = commentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeletePullRequestCommentRequest: CustomStringConvertible {
    public var description: String { "DeletePullRequestCommentRequest()" }
}

// MARK: - DeletePullRequestCommentResponse

public struct DeletePullRequestCommentResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeletePullRequestCommentResponse: CustomStringConvertible {
    public var description: String { "DeletePullRequestCommentResponse()" }
}