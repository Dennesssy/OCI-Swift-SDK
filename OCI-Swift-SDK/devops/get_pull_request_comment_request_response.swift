import Foundation

// MARK: - GetPullRequestCommentRequest

public struct GetPullRequestCommentRequest: Codable, Sendable {
    public var pullRequestId: String?
    public var commentId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, commentId, opcRequestId
    }

    public init(
                pullRequestId: String? = nil,
                commentId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.pullRequestId = pullRequestId
        self.commentId = commentId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPullRequestCommentRequest: CustomStringConvertible {
    public var description: String { "GetPullRequestCommentRequest()" }
}

// MARK: - GetPullRequestCommentResponse

public struct GetPullRequestCommentResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var pullRequestComment: PullRequestComment?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, pullRequestComment
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                pullRequestComment: PullRequestComment? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.pullRequestComment = pullRequestComment
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPullRequestCommentResponse: CustomStringConvertible {
    public var description: String { "GetPullRequestCommentResponse()" }
}