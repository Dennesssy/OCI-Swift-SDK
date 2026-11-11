import Foundation

// MARK: - UpdatePullRequestNotificationPreferenceRequest

public struct UpdatePullRequestNotificationPreferenceRequest: Codable, Sendable {
    public var pullRequestId: String?
    public var principalId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updatePullRequestNotificationPreferenceDetails: UpdatePullRequestNotificationPreferenceDetails?

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, principalId, ifMatch, opcRequestId, updatePullRequestNotificationPreferenceDetails
    }

    public init(
                pullRequestId: String? = nil,
                principalId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updatePullRequestNotificationPreferenceDetails: UpdatePullRequestNotificationPreferenceDetails? = nil
    ) {
        self.pullRequestId = pullRequestId
        self.principalId = principalId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updatePullRequestNotificationPreferenceDetails = updatePullRequestNotificationPreferenceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdatePullRequestNotificationPreferenceRequest: CustomStringConvertible {
    public var description: String { "UpdatePullRequestNotificationPreferenceRequest()" }
}

// MARK: - UpdatePullRequestNotificationPreferenceResponse

public struct UpdatePullRequestNotificationPreferenceResponse: Codable, Sendable {
    public var location: String?
    public var etag: String?
    public var opcRequestId: String?
    public var pullRequestNotificationPreference: PullRequestNotificationPreference?

    private enum CodingKeys: String, CodingKey {
        case location, etag, opcRequestId, pullRequestNotificationPreference
    }

    public init(
                location: String? = nil,
                etag: String? = nil,
                opcRequestId: String? = nil,
                pullRequestNotificationPreference: PullRequestNotificationPreference? = nil
    ) {
        self.location = location
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.pullRequestNotificationPreference = pullRequestNotificationPreference
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdatePullRequestNotificationPreferenceResponse: CustomStringConvertible {
    public var description: String { "UpdatePullRequestNotificationPreferenceResponse()" }
}