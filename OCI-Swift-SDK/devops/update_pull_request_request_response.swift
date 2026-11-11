import Foundation

// MARK: - UpdatePullRequestRequest

public struct UpdatePullRequestRequest: Codable, Sendable {
    public var pullRequestId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updatePullRequestDetails: UpdatePullRequestDetails?

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, ifMatch, opcRequestId, updatePullRequestDetails
    }

    public init(
                pullRequestId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updatePullRequestDetails: UpdatePullRequestDetails? = nil
    ) {
        self.pullRequestId = pullRequestId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updatePullRequestDetails = updatePullRequestDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdatePullRequestRequest: CustomStringConvertible {
    public var description: String { "UpdatePullRequestRequest()" }
}

// MARK: - UpdatePullRequestResponse

public struct UpdatePullRequestResponse: Codable, Sendable {
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var pullRequest: PullRequest?

    private enum CodingKeys: String, CodingKey {
        case contentLocation, etag, opcWorkRequestId, opcRequestId, pullRequest
    }

    public init(
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                pullRequest: PullRequest? = nil
    ) {
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.pullRequest = pullRequest
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdatePullRequestResponse: CustomStringConvertible {
    public var description: String { "UpdatePullRequestResponse()" }
}