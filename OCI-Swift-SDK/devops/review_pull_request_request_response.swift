import Foundation

// MARK: - ReviewPullRequestRequest

public struct ReviewPullRequestRequest: Codable, Sendable {
    public var pullRequestId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var reviewPullRequestDetails: ReviewPullRequestDetails?

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, ifMatch, opcRequestId, reviewPullRequestDetails
    }

    public init(
                pullRequestId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                reviewPullRequestDetails: ReviewPullRequestDetails? = nil
    ) {
        self.pullRequestId = pullRequestId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.reviewPullRequestDetails = reviewPullRequestDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ReviewPullRequestRequest: CustomStringConvertible {
    public var description: String { "ReviewPullRequestRequest()" }
}

// MARK: - ReviewPullRequestResponse

public struct ReviewPullRequestResponse: Codable, Sendable {
    public var location: String?
    public var opcRequestId: String?
    public var etag: String?
    public var pullRequest: PullRequest?

    private enum CodingKeys: String, CodingKey {
        case location, opcRequestId, etag, pullRequest
    }

    public init(
                location: String? = nil,
                opcRequestId: String? = nil,
                etag: String? = nil,
                pullRequest: PullRequest? = nil
    ) {
        self.location = location
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.pullRequest = pullRequest
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ReviewPullRequestResponse: CustomStringConvertible {
    public var description: String { "ReviewPullRequestResponse()" }
}