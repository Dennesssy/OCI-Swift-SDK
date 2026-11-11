import Foundation

// MARK: - PatchPullRequestRequest

public struct PatchPullRequestRequest: Codable, Sendable {
    public var pullRequestId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var patchPullRequestDetails: PatchPullRequestDetails?

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, ifMatch, opcRequestId, patchPullRequestDetails
    }

    public init(
                pullRequestId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                patchPullRequestDetails: PatchPullRequestDetails? = nil
    ) {
        self.pullRequestId = pullRequestId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.patchPullRequestDetails = patchPullRequestDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PatchPullRequestRequest: CustomStringConvertible {
    public var description: String { "PatchPullRequestRequest()" }
}

// MARK: - PatchPullRequestResponse

public struct PatchPullRequestResponse: Codable, Sendable {
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

extension PatchPullRequestResponse: CustomStringConvertible {
    public var description: String { "PatchPullRequestResponse()" }
}