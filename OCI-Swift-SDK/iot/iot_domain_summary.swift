import Foundation
import OCICommon

// MARK: - IotDomainSummary

public struct IotDomainSummary: Codable, Sendable {

    public var id: String?
    public var iotDomainGroupId: String?
    public var compartmentId: String?
    public var displayName: String?
    public var lifecycleState: IotDomainLifecycleStateEnum
    public var timeCreated: Date?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case id, iotDomainGroupId, compartmentId, displayName, lifecycleState, timeCreated, description, freeformTags, definedTags, systemTags, timeUpdated
    }

    public init(
                id: String? = nil,
                iotDomainGroupId: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                lifecycleState: IotDomainLifecycleStateEnum,
                timeCreated: Date? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                timeUpdated: Date? = nil
    ) {
        self.id = id
        self.iotDomainGroupId = iotDomainGroupId
        self.compartmentId = compartmentId
        self.displayName = displayName
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
