import Foundation
import OCICommon

// MARK: - LimitsIncreaseRequest

public struct LimitsIncreaseRequest: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var lifecycleState: LimitsIncreaseRequestLifecycleStateEnum
    public var limitsIncreaseItemRequests: [LimitsIncreaseItemRequest]
    public var timeCreated: Date?
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var subscriptionId: String?
    public var justification: String?
    public var timeUpdated: Date?
    public var timeResolution: Date?
    public var customerComments: [LimitsIncreaseRequestComment]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, lifecycleState, limitsIncreaseItemRequests, timeCreated, freeformTags, definedTags, subscriptionId, justification, timeUpdated, timeResolution, customerComments, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                lifecycleState: LimitsIncreaseRequestLifecycleStateEnum,
                limitsIncreaseItemRequests: [LimitsIncreaseItemRequest],
                timeCreated: Date? = nil,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                subscriptionId: String? = nil,
                justification: String? = nil,
                timeUpdated: Date? = nil,
                timeResolution: Date? = nil,
                customerComments: [LimitsIncreaseRequestComment]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.limitsIncreaseItemRequests = limitsIncreaseItemRequests
        self.timeCreated = timeCreated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.subscriptionId = subscriptionId
        self.justification = justification
        self.timeUpdated = timeUpdated
        self.timeResolution = timeResolution
        self.customerComments = customerComments
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LimitsIncreaseRequest: CustomStringConvertible {
    public var description: String { "LimitsIncreaseRequest()" }
}