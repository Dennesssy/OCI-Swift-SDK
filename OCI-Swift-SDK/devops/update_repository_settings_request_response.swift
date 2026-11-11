import Foundation

// MARK: - UpdateRepositorySettingsRequest

public struct UpdateRepositorySettingsRequest: Codable, Sendable {
    public var repositoryId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateRepositorySettingsDetails: UpdateRepositorySettingsDetails?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, ifMatch, opcRequestId, updateRepositorySettingsDetails
    }

    public init(
                repositoryId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateRepositorySettingsDetails: UpdateRepositorySettingsDetails? = nil
    ) {
        self.repositoryId = repositoryId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateRepositorySettingsDetails = updateRepositorySettingsDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateRepositorySettingsRequest: CustomStringConvertible {
    public var description: String { "UpdateRepositorySettingsRequest()" }
}

// MARK: - UpdateRepositorySettingsResponse

public struct UpdateRepositorySettingsResponse: Codable, Sendable {
    public var location: String?
    public var etag: String?
    public var opcRequestId: String?
    public var repositorySettings: RepositorySettings?

    private enum CodingKeys: String, CodingKey {
        case location, etag, opcRequestId, repositorySettings
    }

    public init(
                location: String? = nil,
                etag: String? = nil,
                opcRequestId: String? = nil,
                repositorySettings: RepositorySettings? = nil
    ) {
        self.location = location
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.repositorySettings = repositorySettings
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateRepositorySettingsResponse: CustomStringConvertible {
    public var description: String { "UpdateRepositorySettingsResponse()" }
}