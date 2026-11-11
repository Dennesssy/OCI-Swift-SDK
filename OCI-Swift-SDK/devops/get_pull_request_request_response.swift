import Foundation

// MARK: - GetPullRequestRequest

public struct GetPullRequestRequest: Codable, Sendable {
    public var pullRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, opcRequestId
    }

    public init(
                pullRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.pullRequestId = pullRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPullRequestRequest: CustomStringConvertible {
    public var description: String { "GetPullRequestRequest()" }
}

// MARK: - GetPullRequestResponse

public struct GetPullRequestResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var pullRequest: PullRequest?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, pullRequest
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                pullRequest: PullRequest? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.pullRequest = pullRequest
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPullRequestResponse: CustomStringConvertible {
    public var description: String { "GetPullRequestResponse()" }
}