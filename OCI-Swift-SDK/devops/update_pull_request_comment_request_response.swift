import Foundation

// MARK: - UpdatePullRequestCommentRequest

public struct UpdatePullRequestCommentRequest: Codable, Sendable {
    public var pullRequestId: String?
    public var commentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updatePullRequestCommentDetails: UpdatePullRequestCommentDetails?

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, commentId, ifMatch, opcRequestId, updatePullRequestCommentDetails
    }

    public init(
                pullRequestId: String? = nil,
                commentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updatePullRequestCommentDetails: UpdatePullRequestCommentDetails? = nil
    ) {
        self.pullRequestId = pullRequestId
        self.commentId = commentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updatePullRequestCommentDetails = updatePullRequestCommentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdatePullRequestCommentRequest: CustomStringConvertible {
    public var description: String { "UpdatePullRequestCommentRequest()" }
}

// MARK: - UpdatePullRequestCommentResponse

public struct UpdatePullRequestCommentResponse: Codable, Sendable {
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

extension UpdatePullRequestCommentResponse: CustomStringConvertible {
    public var description: String { "UpdatePullRequestCommentResponse()" }
}