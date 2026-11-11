import Foundation

// MARK: - GetRepositoryNotificationPreferenceRequest

public struct GetRepositoryNotificationPreferenceRequest: Codable, Sendable {
    public var repositoryId: String?
    public var principalId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, principalId, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                principalId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.principalId = principalId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetRepositoryNotificationPreferenceRequest: CustomStringConvertible {
    public var description: String { "GetRepositoryNotificationPreferenceRequest()" }
}

// MARK: - GetRepositoryNotificationPreferenceResponse

public struct GetRepositoryNotificationPreferenceResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var repositoryNotificationPreference: RepositoryNotificationPreference?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, repositoryNotificationPreference
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                repositoryNotificationPreference: RepositoryNotificationPreference? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.repositoryNotificationPreference = repositoryNotificationPreference
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetRepositoryNotificationPreferenceResponse: CustomStringConvertible {
    public var description: String { "GetRepositoryNotificationPreferenceResponse()" }
}