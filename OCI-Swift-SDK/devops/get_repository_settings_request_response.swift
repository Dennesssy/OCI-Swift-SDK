import Foundation

// MARK: - GetRepositorySettingsRequest

public struct GetRepositorySettingsRequest: Codable, Sendable {
    public var repositoryId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetRepositorySettingsRequest: CustomStringConvertible {
    public var description: String { "GetRepositorySettingsRequest()" }
}

// MARK: - GetRepositorySettingsResponse

public struct GetRepositorySettingsResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var repositorySettings: RepositorySettings?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, repositorySettings
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                repositorySettings: RepositorySettings? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.repositorySettings = repositorySettings
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetRepositorySettingsResponse: CustomStringConvertible {
    public var description: String { "GetRepositorySettingsResponse()" }
}