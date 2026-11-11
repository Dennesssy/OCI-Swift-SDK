import Foundation
import OCICommon

// MARK: - CreateGatewayDetails

public struct CreateGatewayDetails: Codable, Sendable {

    public var compartmentId: String?
    public var endpointType: GatewayEndpointTypeEnum
    public var subnetId: String?
    public var displayName: String?
    public var networkSecurityGroupIds: [String]?
    public var certificateId: String?
    public var responseCacheDetails: JSONValue?
    public var locks: [AddResourceLockDetails]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var caBundles: [JSONValue]?
    public var ipMode: GatewayIpModeEnum?
    public var ipv6AddressConfiguration: Ipv6AddressConfiguration?
    public var ipv4AddressConfiguration: Ipv4AddressConfiguration?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, endpointType, subnetId, displayName, networkSecurityGroupIds, certificateId, responseCacheDetails, locks, freeformTags, definedTags, caBundles, ipMode, ipv6AddressConfiguration, ipv4AddressConfiguration
    }

    public init(
                compartmentId: String? = nil,
                endpointType: GatewayEndpointTypeEnum,
                subnetId: String? = nil,
                displayName: String? = nil,
                networkSecurityGroupIds: [String]? = nil,
                certificateId: String? = nil,
                responseCacheDetails: JSONValue? = nil,
                locks: [AddResourceLockDetails]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                caBundles: [JSONValue]? = nil,
                ipMode: GatewayIpModeEnum? = nil,
                ipv6AddressConfiguration: Ipv6AddressConfiguration? = nil,
                ipv4AddressConfiguration: Ipv4AddressConfiguration? = nil
    ) {
        self.compartmentId = compartmentId
        self.endpointType = endpointType
        self.subnetId = subnetId
        self.displayName = displayName
        self.networkSecurityGroupIds = networkSecurityGroupIds
        self.certificateId = certificateId
        self.responseCacheDetails = responseCacheDetails
        self.locks = locks
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.caBundles = caBundles
        self.ipMode = ipMode
        self.ipv6AddressConfiguration = ipv6AddressConfiguration
        self.ipv4AddressConfiguration = ipv4AddressConfiguration
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateGatewayDetails: CustomStringConvertible {
    public var description: String { "CreateGatewayDetails()" }
}