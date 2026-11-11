import Foundation
import OCICommon

// MARK: - CreateDelegationSubscriptionDetails

public struct CreateDelegationSubscriptionDetails: Codable, Sendable {

    public var compartmentId: String?
    public var serviceProviderId: String?
    public var subscribedServiceType: ServiceProviderServiceTypeEnum
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, serviceProviderId, subscribedServiceType, description, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                serviceProviderId: String? = nil,
                subscribedServiceType: ServiceProviderServiceTypeEnum,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.serviceProviderId = serviceProviderId
        self.subscribedServiceType = subscribedServiceType
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
