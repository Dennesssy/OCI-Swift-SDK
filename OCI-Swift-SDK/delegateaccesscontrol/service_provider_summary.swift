import Foundation
import OCICommon

// MARK: - ServiceProviderSummary

public struct ServiceProviderSummary: Codable, Sendable {

    public var id: String?
    public var name: String?
    public var compartmentId: String?
    public var serviceProviderType: ServiceProviderServiceProviderTypeEnum?
    public var serviceTypes: [ServiceProviderServiceTypeEnum]?
    public var supportedResourceTypes: [DelegationControlResourceTypeEnum]?
    public var lifecycleState: ServiceProviderLifecycleStateEnum?
    public var lifecycleStateDetails: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, name, compartmentId, serviceProviderType, serviceTypes, supportedResourceTypes, lifecycleState, lifecycleStateDetails, timeCreated, timeUpdated, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                name: String? = nil,
                compartmentId: String? = nil,
                serviceProviderType: ServiceProviderServiceProviderTypeEnum? = nil,
                serviceTypes: [ServiceProviderServiceTypeEnum]? = nil,
                supportedResourceTypes: [DelegationControlResourceTypeEnum]? = nil,
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
        self.compartmentId = compartmentId
        self.serviceProviderType = serviceProviderType
        self.serviceTypes = serviceTypes
        self.supportedResourceTypes = supportedResourceTypes
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

extension ServiceProviderSummary: CustomStringConvertible {
    public var description: String { "ServiceProviderSummary()" }
}