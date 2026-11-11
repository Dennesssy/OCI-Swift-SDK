import Foundation
import OCICommon

// MARK: - GitlabServerAccessTokenConnectionSummary

public struct GitlabServerAccessTokenConnectionSummary: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var projectId: String?
    public var accessToken: String?
    public var baseUrl: String?
    public var displayName: String?
    public var description: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lastConnectionValidationResult: ConnectionValidationResult?
    public var lifecycleDetails: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var tlsVerifyConfig: JSONValue?
    public var lifecycleState: ConnectionLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, projectId, accessToken, baseUrl, displayName, description, timeCreated, timeUpdated, lastConnectionValidationResult, lifecycleDetails, freeformTags, definedTags, systemTags, tlsVerifyConfig, lifecycleState
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                projectId: String? = nil,
                accessToken: String? = nil,
                baseUrl: String? = nil,
                displayName: String? = nil,
                description: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lastConnectionValidationResult: ConnectionValidationResult? = nil,
                lifecycleDetails: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                tlsVerifyConfig: JSONValue? = nil,
                lifecycleState: ConnectionLifecycleStateEnum? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.projectId = projectId
        self.accessToken = accessToken
        self.baseUrl = baseUrl
        self.displayName = displayName
        self.description = description
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lastConnectionValidationResult = lastConnectionValidationResult
        self.lifecycleDetails = lifecycleDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.tlsVerifyConfig = tlsVerifyConfig
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
