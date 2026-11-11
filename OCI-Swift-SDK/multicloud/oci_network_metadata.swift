import Foundation

// MARK: - OciNetworkMetadata

public struct OciNetworkMetadata: Codable, Sendable {

    public var networkAnchorConnectionStatus: NetworkAnchorConnectionStatusEnum
    public var vcn: OciVcn?
    public var dns: OciDns?
    public var subnets: [OciNetworkSubnet]?
    public var dnsListeningEndpointIpAddress: String?
    public var dnsForwardingEndpointIpAddress: String?
    public var dnsForwardingConfig: [[String: String]]?

    private enum CodingKeys: String, CodingKey {
        case networkAnchorConnectionStatus, vcn, dns, subnets, dnsListeningEndpointIpAddress, dnsForwardingEndpointIpAddress, dnsForwardingConfig
    }

    public init(
                networkAnchorConnectionStatus: NetworkAnchorConnectionStatusEnum,
                vcn: OciVcn? = nil,
                dns: OciDns? = nil,
                subnets: [OciNetworkSubnet]? = nil,
                dnsListeningEndpointIpAddress: String? = nil,
                dnsForwardingEndpointIpAddress: String? = nil,
                dnsForwardingConfig: [[String: String]]? = nil
    ) {
        self.networkAnchorConnectionStatus = networkAnchorConnectionStatus
        self.vcn = vcn
        self.dns = dns
        self.subnets = subnets
        self.dnsListeningEndpointIpAddress = dnsListeningEndpointIpAddress
        self.dnsForwardingEndpointIpAddress = dnsForwardingEndpointIpAddress
        self.dnsForwardingConfig = dnsForwardingConfig
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OciNetworkMetadata: CustomStringConvertible {
    public var description: String { "OciNetworkMetadata()" }
}