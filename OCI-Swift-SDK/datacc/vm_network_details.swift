import Foundation

// MARK: - VmNetworkDetails

public struct VmNetworkDetails: Codable, Sendable {

    public var networkType: VmClusterNetworkTypeEnum
    public var netmask: String?
    public var gateway: String?
    public var domainName: String?
    public var nodes: [NodeDetails]
    public var vlanId: String?
    public var prefix: String?

    private enum CodingKeys: String, CodingKey {
        case networkType, netmask, gateway, domainName, nodes, vlanId, prefix
    }

    public init(
                networkType: VmClusterNetworkTypeEnum,
                netmask: String? = nil,
                gateway: String? = nil,
                domainName: String? = nil,
                nodes: [NodeDetails],
                vlanId: String? = nil,
                prefix: String? = nil
    ) {
        self.networkType = networkType
        self.netmask = netmask
        self.gateway = gateway
        self.domainName = domainName
        self.nodes = nodes
        self.vlanId = vlanId
        self.prefix = prefix
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension VmNetworkDetails: CustomStringConvertible {
    public var description: String { "VmNetworkDetails()" }
}