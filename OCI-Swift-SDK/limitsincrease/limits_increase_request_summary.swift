import Foundation
import OCICommon

// MARK: - LimitsIncreaseRequestSummary

public struct LimitsIncreaseRequestSummary: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var lifecycleState: LimitsIncreaseRequestLifecycleStateEnum
    public var displayName: String?
    public var itemsInRequest: Int64?
    public var timeCreated: Date?
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var subscriptionId: String?
    public var justification: String?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, lifecycleState, displayName, itemsInRequest, timeCreated, freeformTags, definedTags, subscriptionId, justification, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                lifecycleState: LimitsIncreaseRequestLifecycleStateEnum,
                displayName: String? = nil,
                itemsInRequest: Int64? = nil,
                timeCreated: Date? = nil,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                subscriptionId: String? = nil,
                justification: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.itemsInRequest = itemsInRequest
        self.timeCreated = timeCreated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.subscriptionId = subscriptionId
        self.justification = justification
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LimitsIncreaseRequestSummary: CustomStringConvertible {
    public var description: String { "LimitsIncreaseRequestSummary()" }
}