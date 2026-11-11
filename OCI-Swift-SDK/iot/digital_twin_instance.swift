import Foundation
import OCICommon

// MARK: - DigitalTwinInstance

public struct DigitalTwinInstance: Codable, Sendable {

    public var id: String?
    public var iotDomainId: String?
    public var connectivityType: DigitalTwinInstanceConnectivityTypeEnum
    public var displayName: String?
    public var lifecycleState: LifecycleStateEnum
    public var timeCreated: Date?
    public var authId: String?
    public var externalKey: String?
    public var description: String?
    public var digitalTwinModelId: String?
    public var digitalTwinModelSpecUri: String?
    public var digitalTwinAdapterId: String?
    public var gateways: [String]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case id, iotDomainId, connectivityType, displayName, lifecycleState, timeCreated, authId, externalKey, description, digitalTwinModelId, digitalTwinModelSpecUri, digitalTwinAdapterId, gateways, freeformTags, definedTags, systemTags, timeUpdated
    }

    public init(
                id: String? = nil,
                iotDomainId: String? = nil,
                connectivityType: DigitalTwinInstanceConnectivityTypeEnum,
                displayName: String? = nil,
                lifecycleState: LifecycleStateEnum,
                timeCreated: Date? = nil,
                authId: String? = nil,
                externalKey: String? = nil,
                description: String? = nil,
                digitalTwinModelId: String? = nil,
                digitalTwinModelSpecUri: String? = nil,
                digitalTwinAdapterId: String? = nil,
                gateways: [String]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                timeUpdated: Date? = nil
    ) {
        self.id = id
        self.iotDomainId = iotDomainId
        self.connectivityType = connectivityType
        self.displayName = displayName
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.authId = authId
        self.externalKey = externalKey
        self.description = description
        self.digitalTwinModelId = digitalTwinModelId
        self.digitalTwinModelSpecUri = digitalTwinModelSpecUri
        self.digitalTwinAdapterId = digitalTwinAdapterId
        self.gateways = gateways
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
