import Foundation

// MARK: - InfoVmNetworkDetails

public struct InfoVmNetworkDetails: Codable, Sendable {

    public var networkType: VmClusterNetworkTypeEnum
    public var netmask: String?
    public var gateway: String?
    public var domainName: String?
    public var vlanId: String?
    public var prefix: String?
    public var startingIp: String?

    private enum CodingKeys: String, CodingKey {
        case networkType, netmask, gateway, domainName, vlanId, prefix, startingIp
    }

    public init(
                networkType: VmClusterNetworkTypeEnum,
                netmask: String? = nil,
                gateway: String? = nil,
                domainName: String? = nil,
                vlanId: String? = nil,
                prefix: String? = nil,
                startingIp: String? = nil
    ) {
        self.networkType = networkType
        self.netmask = netmask
        self.gateway = gateway
        self.domainName = domainName
        self.vlanId = vlanId
        self.prefix = prefix
        self.startingIp = startingIp
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension InfoVmNetworkDetails: CustomStringConvertible {
    public var description: String { "InfoVmNetworkDetails()" }
}