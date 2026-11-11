import Foundation

// MARK: - UnlikePullRequestCommentRequest

public struct UnlikePullRequestCommentRequest: Codable, Sendable {
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

extension UnlikePullRequestCommentRequest: CustomStringConvertible {
    public var description: String { "UnlikePullRequestCommentRequest()" }
}

// MARK: - UnlikePullRequestCommentResponse

public struct UnlikePullRequestCommentResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var pullRequestComment: PullRequestComment?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, pullRequestComment
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                pullRequestComment: PullRequestComment? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.pullRequestComment = pullRequestComment
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UnlikePullRequestCommentResponse: CustomStringConvertible {
    public var description: String { "UnlikePullRequestCommentResponse()" }
}