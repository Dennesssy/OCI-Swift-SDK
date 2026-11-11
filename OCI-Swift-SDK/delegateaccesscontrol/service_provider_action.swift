import Foundation

// MARK: - ServiceProviderAction

public struct ServiceProviderAction: Codable, Sendable {

    public var id: String?
    public var name: String?
    public var compartmentId: String?
    public var customerDisplayName: String?
    public var component: String?
    public var resourceType: DelegationControlResourceTypeEnum?
    public var isSshAccessAllowed: Bool?
    public var serviceProviderServiceTypes: [ServiceProviderServiceTypeEnum]?
    public var lifecycleState: ServiceProviderActionLifecycleStateEnum?
    public var description: String?
    public var properties: [ServiceProviderActionProperties]?

    private enum CodingKeys: String, CodingKey {
        case id, name, compartmentId, customerDisplayName, component, resourceType, isSshAccessAllowed, serviceProviderServiceTypes, lifecycleState, description, properties
    }

    public init(
                id: String? = nil,
                name: String? = nil,
                compartmentId: String? = nil,
                customerDisplayName: String? = nil,
                component: String? = nil,
                resourceType: DelegationControlResourceTypeEnum? = nil,
                isSshAccessAllowed: Bool? = nil,
                serviceProviderServiceTypes: [ServiceProviderServiceTypeEnum]? = nil,
                lifecycleState: ServiceProviderActionLifecycleStateEnum? = nil,
                description: String? = nil,
                properties: [ServiceProviderActionProperties]? = nil
    ) {
        self.id = id
        self.name = name
        self.compartmentId = compartmentId
        self.customerDisplayName = customerDisplayName
        self.component = component
        self.resourceType = resourceType
        self.isSshAccessAllowed = isSshAccessAllowed
        self.serviceProviderServiceTypes = serviceProviderServiceTypes
        self.lifecycleState = lifecycleState
        self.description = description
        self.properties = properties
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
