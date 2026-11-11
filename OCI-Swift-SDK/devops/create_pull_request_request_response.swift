import Foundation

// MARK: - CreatePullRequestRequest

public struct CreatePullRequestRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createPullRequestDetails: CreatePullRequestDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createPullRequestDetails
    }

    public init(
                opcRequestId: String? = nil,
                createPullRequestDetails: CreatePullRequestDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createPullRequestDetails = createPullRequestDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreatePullRequestRequest: CustomStringConvertible {
    public var description: String { "CreatePullRequestRequest()" }
}

// MARK: - CreatePullRequestResponse

public struct CreatePullRequestResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var etag: String?
    public var pullRequest: PullRequest?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, opcWorkRequestId, opcRequestId, etag, pullRequest
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                etag: String? = nil,
                pullRequest: PullRequest? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.pullRequest = pullRequest
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreatePullRequestResponse: CustomStringConvertible {
    public var description: String { "CreatePullRequestResponse()" }
}