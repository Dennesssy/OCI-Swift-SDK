import Foundation
import OCICommon

// MARK: - Gateway

public struct Gateway: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var endpointType: GatewayEndpointTypeEnum
    public var displayName: String?
    public var subnetId: String?
    public var networkSecurityGroupIds: [String]?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleState: GatewayLifecycleStateEnum?
    public var lifecycleDetails: String?
    public var locks: [ResourceLock]?
    public var hostname: String?
    public var certificateId: String?
    public var ipAddresses: [IpAddress]?
    public var responseCacheDetails: JSONValue?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var caBundles: [JSONValue]?
    public var ipMode: GatewayIpModeEnum?
    public var ipv6AddressConfiguration: Ipv6AddressConfiguration?
    public var ipv4AddressConfiguration: Ipv4AddressConfiguration?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, endpointType, displayName, subnetId, networkSecurityGroupIds, timeCreated, timeUpdated, lifecycleState, lifecycleDetails, locks, hostname, certificateId, ipAddresses, responseCacheDetails, freeformTags, definedTags, systemTags, caBundles, ipMode, ipv6AddressConfiguration, ipv4AddressConfiguration
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                endpointType: GatewayEndpointTypeEnum,
                displayName: String? = nil,
                subnetId: String? = nil,
                networkSecurityGroupIds: [String]? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: GatewayLifecycleStateEnum? = nil,
                lifecycleDetails: String? = nil,
                locks: [ResourceLock]? = nil,
                hostname: String? = nil,
                certificateId: String? = nil,
                ipAddresses: [IpAddress]? = nil,
                responseCacheDetails: JSONValue? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                caBundles: [JSONValue]? = nil,
                ipMode: GatewayIpModeEnum? = nil,
                ipv6AddressConfiguration: Ipv6AddressConfiguration? = nil,
                ipv4AddressConfiguration: Ipv4AddressConfiguration? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.endpointType = endpointType
        self.displayName = displayName
        self.subnetId = subnetId
        self.networkSecurityGroupIds = networkSecurityGroupIds
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.locks = locks
        self.hostname = hostname
        self.certificateId = certificateId
        self.ipAddresses = ipAddresses
        self.responseCacheDetails = responseCacheDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.caBundles = caBundles
        self.ipMode = ipMode
        self.ipv6AddressConfiguration = ipv6AddressConfiguration
        self.ipv4AddressConfiguration = ipv4AddressConfiguration
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Gateway: CustomStringConvertible {
    public var description: String { "Gateway()" }
}