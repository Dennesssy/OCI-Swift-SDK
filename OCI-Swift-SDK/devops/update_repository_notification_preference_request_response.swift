import Foundation

// MARK: - UpdateRepositoryNotificationPreferenceRequest

public struct UpdateRepositoryNotificationPreferenceRequest: Codable, Sendable {
    public var repositoryId: String?
    public var principalId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateRepositoryNotificationPreferenceDetails: UpdateRepositoryNotificationPreferenceDetails?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, principalId, ifMatch, opcRequestId, updateRepositoryNotificationPreferenceDetails
    }

    public init(
                repositoryId: String? = nil,
                principalId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateRepositoryNotificationPreferenceDetails: UpdateRepositoryNotificationPreferenceDetails? = nil
    ) {
        self.repositoryId = repositoryId
        self.principalId = principalId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateRepositoryNotificationPreferenceDetails = updateRepositoryNotificationPreferenceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateRepositoryNotificationPreferenceRequest: CustomStringConvertible {
    public var description: String { "UpdateRepositoryNotificationPreferenceRequest()" }
}

// MARK: - UpdateRepositoryNotificationPreferenceResponse

public struct UpdateRepositoryNotificationPreferenceResponse: Codable, Sendable {
    public var location: String?
    public var etag: String?
    public var opcRequestId: String?
    public var repositoryNotificationPreference: RepositoryNotificationPreference?

    private enum CodingKeys: String, CodingKey {
        case location, etag, opcRequestId, repositoryNotificationPreference
    }

    public init(
                location: String? = nil,
                etag: String? = nil,
                opcRequestId: String? = nil,
                repositoryNotificationPreference: RepositoryNotificationPreference? = nil
    ) {
        self.location = location
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.repositoryNotificationPreference = repositoryNotificationPreference
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateRepositoryNotificationPreferenceResponse: CustomStringConvertible {
    public var description: String { "UpdateRepositoryNotificationPreferenceResponse()" }
}