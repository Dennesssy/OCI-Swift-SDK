import Foundation

// MARK: - GetPullRequestNotificationPreferenceRequest

public struct GetPullRequestNotificationPreferenceRequest: Codable, Sendable {
    public var pullRequestId: String?
    public var principalId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, principalId, opcRequestId
    }

    public init(
                pullRequestId: String? = nil,
                principalId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.pullRequestId = pullRequestId
        self.principalId = principalId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPullRequestNotificationPreferenceRequest: CustomStringConvertible {
    public var description: String { "GetPullRequestNotificationPreferenceRequest()" }
}

// MARK: - GetPullRequestNotificationPreferenceResponse

public struct GetPullRequestNotificationPreferenceResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var pullRequestNotificationPreference: PullRequestNotificationPreference?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, pullRequestNotificationPreference
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                pullRequestNotificationPreference: PullRequestNotificationPreference? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.pullRequestNotificationPreference = pullRequestNotificationPreference
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPullRequestNotificationPreferenceResponse: CustomStringConvertible {
    public var description: String { "GetPullRequestNotificationPreferenceResponse()" }
}