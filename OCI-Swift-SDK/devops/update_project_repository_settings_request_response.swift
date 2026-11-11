import Foundation

// MARK: - UpdateProjectRepositorySettingsRequest

public struct UpdateProjectRepositorySettingsRequest: Codable, Sendable {
    public var projectId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateProjectRepositorySettingsDetails: UpdateProjectRepositorySettingsDetails?

    private enum CodingKeys: String, CodingKey {
        case projectId, ifMatch, opcRequestId, updateProjectRepositorySettingsDetails
    }

    public init(
                projectId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateProjectRepositorySettingsDetails: UpdateProjectRepositorySettingsDetails? = nil
    ) {
        self.projectId = projectId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateProjectRepositorySettingsDetails = updateProjectRepositorySettingsDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateProjectRepositorySettingsRequest: CustomStringConvertible {
    public var description: String { "UpdateProjectRepositorySettingsRequest()" }
}

// MARK: - UpdateProjectRepositorySettingsResponse

public struct UpdateProjectRepositorySettingsResponse: Codable, Sendable {
    public var location: String?
    public var etag: String?
    public var opcRequestId: String?
    public var projectRepositorySettings: ProjectRepositorySettings?

    private enum CodingKeys: String, CodingKey {
        case location, etag, opcRequestId, projectRepositorySettings
    }

    public init(
                location: String? = nil,
                etag: String? = nil,
                opcRequestId: String? = nil,
                projectRepositorySettings: ProjectRepositorySettings? = nil
    ) {
        self.location = location
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.projectRepositorySettings = projectRepositorySettings
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateProjectRepositorySettingsResponse: CustomStringConvertible {
    public var description: String { "UpdateProjectRepositorySettingsResponse()" }
}