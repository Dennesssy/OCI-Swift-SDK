import Foundation
import OCICommon

// MARK: - AiDataPlatform

public struct AiDataPlatform: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var aiDataPlatformType: String?
    public var timeCreated: Date?
    public var lifecycleState: AiDataPlatformLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var createdBy: String?
    public var timeUpdated: Date?
    public var aliasKey: String?
    public var webSocketEndpoint: String?
    public var aiFeatureStatus: AiDataPlatformAiFeatureStatusEnum?
    public var lifecycleDetails: String?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, aiDataPlatformType, timeCreated, lifecycleState, freeformTags, definedTags, createdBy, timeUpdated, aliasKey, webSocketEndpoint, aiFeatureStatus, lifecycleDetails, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                aiDataPlatformType: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: AiDataPlatformLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                createdBy: String? = nil,
                timeUpdated: Date? = nil,
                aliasKey: String? = nil,
                webSocketEndpoint: String? = nil,
                aiFeatureStatus: AiDataPlatformAiFeatureStatusEnum? = nil,
                lifecycleDetails: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.aiDataPlatformType = aiDataPlatformType
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.createdBy = createdBy
        self.timeUpdated = timeUpdated
        self.aliasKey = aliasKey
        self.webSocketEndpoint = webSocketEndpoint
        self.aiFeatureStatus = aiFeatureStatus
        self.lifecycleDetails = lifecycleDetails
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AiDataPlatform: CustomStringConvertible {
    public var description: String { "AiDataPlatform()" }
}