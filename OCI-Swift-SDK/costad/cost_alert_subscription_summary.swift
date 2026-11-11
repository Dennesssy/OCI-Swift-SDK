import Foundation
import OCICommon

// MARK: - CostAlertSubscriptionSummary

public struct CostAlertSubscriptionSummary: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var name: String?
    public var channelTypes: String?
    public var timeCreated: Date?
    public var lifecycleState: CostAlertSubscriptionLifecycleStateEnum
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, name, channelTypes, timeCreated, lifecycleState, definedTags, freeformTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                name: String? = nil,
                channelTypes: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: CostAlertSubscriptionLifecycleStateEnum,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.name = name
        self.channelTypes = channelTypes
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.definedTags = definedTags
        self.freeformTags = freeformTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CostAlertSubscriptionSummary: CustomStringConvertible {
    public var description: String { "CostAlertSubscriptionSummary()" }
}