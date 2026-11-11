import Foundation
import OCICommon

// MARK: - ServiceProvider

public struct ServiceProvider: Codable, Sendable {

    public var id: String?
    public var name: String?
    public var serviceProviderType: ServiceProviderServiceProviderTypeEnum
    public var serviceTypes: [ServiceProviderServiceTypeEnum]
    public var supportedResourceTypes: [DelegationControlResourceTypeEnum]
    public var compartmentId: String?
    public var description: String?
    public var lifecycleState: ServiceProviderLifecycleStateEnum?
    public var lifecycleStateDetails: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, name, serviceProviderType, serviceTypes, supportedResourceTypes, compartmentId, description, lifecycleState, lifecycleStateDetails, timeCreated, timeUpdated, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                name: String? = nil,
                serviceProviderType: ServiceProviderServiceProviderTypeEnum,
                serviceTypes: [ServiceProviderServiceTypeEnum],
                supportedResourceTypes: [DelegationControlResourceTypeEnum],
                compartmentId: String? = nil,
                description: String? = nil,
                lifecycleState: ServiceProviderLifecycleStateEnum? = nil,
                lifecycleStateDetails: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.name = name
        self.serviceProviderType = serviceProviderType
        self.serviceTypes = serviceTypes
        self.supportedResourceTypes = supportedResourceTypes
        self.compartmentId = compartmentId
        self.description = description
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
