import Foundation

// MARK: - GetProjectRepositorySettingsRequest

public struct GetProjectRepositorySettingsRequest: Codable, Sendable {
    public var projectId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case projectId, opcRequestId
    }

    public init(
                projectId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.projectId = projectId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetProjectRepositorySettingsRequest: CustomStringConvertible {
    public var description: String { "GetProjectRepositorySettingsRequest()" }
}

// MARK: - GetProjectRepositorySettingsResponse

public struct GetProjectRepositorySettingsResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var projectRepositorySettings: ProjectRepositorySettings?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, projectRepositorySettings
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                projectRepositorySettings: ProjectRepositorySettings? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.projectRepositorySettings = projectRepositorySettings
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetProjectRepositorySettingsResponse: CustomStringConvertible {
    public var description: String { "GetProjectRepositorySettingsResponse()" }
}