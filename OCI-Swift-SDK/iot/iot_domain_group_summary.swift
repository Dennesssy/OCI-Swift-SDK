import Foundation
import OCICommon

// MARK: - IotDomainGroupSummary

public struct IotDomainGroupSummary: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var type: IotDomainGroupSummaryTypeEnum
    public var displayName: String?
    public var lifecycleState: IotDomainGroupLifecycleStateEnum
    public var timeCreated: Date?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, type, displayName, lifecycleState, timeCreated, description, freeformTags, definedTags, systemTags, timeUpdated
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                type: IotDomainGroupSummaryTypeEnum,
                displayName: String? = nil,
                lifecycleState: IotDomainGroupLifecycleStateEnum,
                timeCreated: Date? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                timeUpdated: Date? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.type = type
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
