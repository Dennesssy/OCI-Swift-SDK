import Foundation

// MARK: - DeclinePullRequestRequest

public struct DeclinePullRequestRequest: Codable, Sendable {
    public var pullRequestId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, ifMatch, opcRequestId
    }

    public init(
                pullRequestId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.pullRequestId = pullRequestId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeclinePullRequestRequest: CustomStringConvertible {
    public var description: String { "DeclinePullRequestRequest()" }
}

// MARK: - DeclinePullRequestResponse

public struct DeclinePullRequestResponse: Codable, Sendable {
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

extension DeclinePullRequestResponse: CustomStringConvertible {
    public var description: String { "DeclinePullRequestResponse()" }
}