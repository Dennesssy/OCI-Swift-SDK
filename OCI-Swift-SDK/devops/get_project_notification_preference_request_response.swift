import Foundation

// MARK: - GetProjectNotificationPreferenceRequest

public struct GetProjectNotificationPreferenceRequest: Codable, Sendable {
    public var projectId: String?
    public var principalId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case projectId, principalId, opcRequestId
    }

    public init(
                projectId: String? = nil,
                principalId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.projectId = projectId
        self.principalId = principalId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetProjectNotificationPreferenceRequest: CustomStringConvertible {
    public var description: String { "GetProjectNotificationPreferenceRequest()" }
}

// MARK: - GetProjectNotificationPreferenceResponse

public struct GetProjectNotificationPreferenceResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var projectNotificationPreference: ProjectNotificationPreference?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, projectNotificationPreference
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                projectNotificationPreference: ProjectNotificationPreference? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.projectNotificationPreference = projectNotificationPreference
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetProjectNotificationPreferenceResponse: CustomStringConvertible {
    public var description: String { "GetProjectNotificationPreferenceResponse()" }
}