import Foundation
import OCICommon

// MARK: - DelegationSubscriptionSummary

public struct DelegationSubscriptionSummary: Codable, Sendable {

    public var id: String?
    public var serviceProviderId: String?
    public var subscribedServiceType: ServiceProviderServiceTypeEnum
    public var compartmentId: String?
    public var displayName: String?
    public var lifecycleState: DelegationSubscriptionLifecycleStateEnum?
    public var lifecycleStateDetails: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, serviceProviderId, subscribedServiceType, compartmentId, displayName, lifecycleState, lifecycleStateDetails, timeCreated, timeUpdated, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                serviceProviderId: String? = nil,
                subscribedServiceType: ServiceProviderServiceTypeEnum,
                compartmentId: String? = nil,
                displayName: String? = nil,
                lifecycleState: DelegationSubscriptionLifecycleStateEnum? = nil,
                lifecycleStateDetails: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.serviceProviderId = serviceProviderId
        self.subscribedServiceType = subscribedServiceType
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.lifecycleState = lifecycleState
        self.lifecycleStateDetails = lifecycleStateDetails
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DelegationSubscriptionSummary: CustomStringConvertible {
    public var description: String { "DelegationSubscriptionSummary()" }
}