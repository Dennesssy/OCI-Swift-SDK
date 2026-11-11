import Foundation

// MARK: - UpdateProjectNotificationPreferenceRequest

public struct UpdateProjectNotificationPreferenceRequest: Codable, Sendable {
    public var projectId: String?
    public var principalId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateProjectNotificationPreferenceDetails: UpdateProjectNotificationPreferenceDetails?

    private enum CodingKeys: String, CodingKey {
        case projectId, principalId, ifMatch, opcRequestId, updateProjectNotificationPreferenceDetails
    }

    public init(
                projectId: String? = nil,
                principalId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateProjectNotificationPreferenceDetails: UpdateProjectNotificationPreferenceDetails? = nil
    ) {
        self.projectId = projectId
        self.principalId = principalId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateProjectNotificationPreferenceDetails = updateProjectNotificationPreferenceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateProjectNotificationPreferenceRequest: CustomStringConvertible {
    public var description: String { "UpdateProjectNotificationPreferenceRequest()" }
}

// MARK: - UpdateProjectNotificationPreferenceResponse

public struct UpdateProjectNotificationPreferenceResponse: Codable, Sendable {
    public var location: String?
    public var etag: String?
    public var opcRequestId: String?
    public var projectNotificationPreference: ProjectNotificationPreference?

    private enum CodingKeys: String, CodingKey {
        case location, etag, opcRequestId, projectNotificationPreference
    }

    public init(
                location: String? = nil,
                etag: String? = nil,
                opcRequestId: String? = nil,
                projectNotificationPreference: ProjectNotificationPreference? = nil
    ) {
        self.location = location
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.projectNotificationPreference = projectNotificationPreference
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateProjectNotificationPreferenceResponse: CustomStringConvertible {
    public var description: String { "UpdateProjectNotificationPreferenceResponse()" }
}