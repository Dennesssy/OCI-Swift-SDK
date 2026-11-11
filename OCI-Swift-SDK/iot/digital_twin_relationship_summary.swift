import Foundation
import OCICommon

// MARK: - DigitalTwinRelationshipSummary

public struct DigitalTwinRelationshipSummary: Codable, Sendable {

    public var id: String?
    public var iotDomainId: String?
    public var displayName: String?
    public var contentPath: String?
    public var sourceDigitalTwinInstanceId: String?
    public var targetDigitalTwinInstanceId: String?
    public var lifecycleState: LifecycleStateEnum
    public var timeCreated: Date?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case id, iotDomainId, displayName, contentPath, sourceDigitalTwinInstanceId, targetDigitalTwinInstanceId, lifecycleState, timeCreated, description, freeformTags, definedTags, systemTags, timeUpdated
    }

    public init(
                id: String? = nil,
                iotDomainId: String? = nil,
                displayName: String? = nil,
                contentPath: String? = nil,
                sourceDigitalTwinInstanceId: String? = nil,
                targetDigitalTwinInstanceId: String? = nil,
                lifecycleState: LifecycleStateEnum,
                timeCreated: Date? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                timeUpdated: Date? = nil
    ) {
        self.id = id
        self.iotDomainId = iotDomainId
        self.displayName = displayName
        self.contentPath = contentPath
        self.sourceDigitalTwinInstanceId = sourceDigitalTwinInstanceId
        self.targetDigitalTwinInstanceId = targetDigitalTwinInstanceId
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
