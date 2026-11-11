import Foundation
import OCICommon

// MARK: - MergePullRequestRequest

public struct MergePullRequestRequest: Codable, Sendable {
    public var pullRequestId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var mergePullRequestDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, ifMatch, opcRequestId, mergePullRequestDetails
    }

    public init(
                pullRequestId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                mergePullRequestDetails: JSONValue? = nil
    ) {
        self.pullRequestId = pullRequestId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.mergePullRequestDetails = mergePullRequestDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MergePullRequestRequest: CustomStringConvertible {
    public var description: String { "MergePullRequestRequest()" }
}

// MARK: - MergePullRequestResponse

public struct MergePullRequestResponse: Codable, Sendable {
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

extension MergePullRequestResponse: CustomStringConvertible {
    public var description: String { "MergePullRequestResponse()" }
}