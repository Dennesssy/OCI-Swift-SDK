import Foundation
import OCICommon

// MARK: - MulticloudPolicySummary

public struct MulticloudPolicySummary: Codable, Sendable {

    public var subscriptionType: SubscriptionTypeEnum
    public var subscriptionId: String?
    public var groups: [String]?
    public var policies: [MulticloudPolicy]?
    public var lifecycleState: MulticloudPolicyLifecycleStateEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case subscriptionType, subscriptionId, groups, policies, lifecycleState, freeformTags, definedTags, systemTags
    }

    public init(
                subscriptionType: SubscriptionTypeEnum,
                subscriptionId: String? = nil,
                groups: [String]? = nil,
                policies: [MulticloudPolicy]? = nil,
                lifecycleState: MulticloudPolicyLifecycleStateEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.subscriptionType = subscriptionType
        self.subscriptionId = subscriptionId
        self.groups = groups
        self.policies = policies
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MulticloudPolicySummary: CustomStringConvertible {
    public var description: String { "MulticloudPolicySummary()" }
}