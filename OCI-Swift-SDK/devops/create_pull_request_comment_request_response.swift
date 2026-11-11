import Foundation

// MARK: - CreatePullRequestCommentRequest

public struct CreatePullRequestCommentRequest: Codable, Sendable {
    public var pullRequestId: String?
    public var opcRequestId: String?
    public var createPullRequestCommentDetails: CreatePullRequestCommentDetails?

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, opcRequestId, createPullRequestCommentDetails
    }

    public init(
                pullRequestId: String? = nil,
                opcRequestId: String? = nil,
                createPullRequestCommentDetails: CreatePullRequestCommentDetails? = nil
    ) {
        self.pullRequestId = pullRequestId
        self.opcRequestId = opcRequestId
        self.createPullRequestCommentDetails = createPullRequestCommentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreatePullRequestCommentRequest: CustomStringConvertible {
    public var description: String { "CreatePullRequestCommentRequest()" }
}

// MARK: - CreatePullRequestCommentResponse

public struct CreatePullRequestCommentResponse: Codable, Sendable {
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

extension CreatePullRequestCommentResponse: CustomStringConvertible {
    public var description: String { "CreatePullRequestCommentResponse()" }
}