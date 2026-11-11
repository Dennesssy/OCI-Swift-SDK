import Foundation
import OCICommon

// MARK: - Sdk

public struct Sdk: Codable, Sendable {

    public var id: String?
    public var apiId: String?
    public var displayName: String?
    public var targetLanguage: String?
    public var compartmentId: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var artifactUrl: String?
    public var timeArtifactUrlExpiresAt: Date?
    public var lifecycleState: SdkLifecycleStateEnum?
    public var lifecycleDetails: String?
    public var locks: [ResourceLock]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var parameters: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case id, apiId, displayName, targetLanguage, compartmentId, timeCreated, timeUpdated, artifactUrl, timeArtifactUrlExpiresAt, lifecycleState, lifecycleDetails, locks, freeformTags, definedTags, systemTags, parameters
    }

    public init(
                id: String? = nil,
                apiId: String? = nil,
                displayName: String? = nil,
                targetLanguage: String? = nil,
                compartmentId: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                artifactUrl: String? = nil,
                timeArtifactUrlExpiresAt: Date? = nil,
                lifecycleState: SdkLifecycleStateEnum? = nil,
                lifecycleDetails: String? = nil,
                locks: [ResourceLock]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                parameters: [String: String]? = nil
    ) {
        self.id = id
        self.apiId = apiId
        self.displayName = displayName
        self.targetLanguage = targetLanguage
        self.compartmentId = compartmentId
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.artifactUrl = artifactUrl
        self.timeArtifactUrlExpiresAt = timeArtifactUrlExpiresAt
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.locks = locks
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.parameters = parameters
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Sdk: CustomStringConvertible {
    public var description: String { "Sdk()" }
}