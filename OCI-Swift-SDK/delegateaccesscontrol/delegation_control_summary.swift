import Foundation
import OCICommon

// MARK: - DelegationControlSummary

public struct DelegationControlSummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var resourceType: DelegationControlResourceTypeEnum
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var timeDeleted: Date?
    public var lifecycleState: DelegationControlLifecycleStateEnum?
    public var lifecycleStateDetails: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, resourceType, timeCreated, timeUpdated, timeDeleted, lifecycleState, lifecycleStateDetails, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                resourceType: DelegationControlResourceTypeEnum,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                timeDeleted: Date? = nil,
                lifecycleState: DelegationControlLifecycleStateEnum? = nil,
                lifecycleStateDetails: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.resourceType = resourceType
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.timeDeleted = timeDeleted
        self.lifecycleState = lifecycleState
        self.lifecycleStateDetails = lifecycleStateDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DelegationControlSummary: CustomStringConvertible {
    public var description: String { "DelegationControlSummary()" }
}