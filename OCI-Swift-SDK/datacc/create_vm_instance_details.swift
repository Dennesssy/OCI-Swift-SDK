import Foundation
import OCICommon

// MARK: - CreateVmInstanceDetails

public struct CreateVmInstanceDetails: Codable, Sendable {

    public var compartmentId: String?
    public var infrastructureId: String?
    public var cpusEnabled: Int?
    public var sshPublicKeys: [String]
    public var displayName: String?
    public var description: String?
    public var memorySizeInGBs: Double?
    public var bootStorageSizeInGBs: Double?
    public var dataStorageSizeInGBs: Double?
    public var imageId: String?
    public var serverId: String?
    public var domainName: String?
    public var timeZone: String?
    public var dnsServers: [String]?
    public var ntpServers: [String]?
    public var hostname: String?
    public var ipAddress: String?
    public var netmask: String?
    public var gateway: String?
    public var vlanId: String?
    public var userdata: String?
    public var metadata: [String: String]?
    public var vmNetworkId: String?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, infrastructureId, cpusEnabled, sshPublicKeys, displayName, description, memorySizeInGBs, bootStorageSizeInGBs, dataStorageSizeInGBs, imageId, serverId, domainName, timeZone, dnsServers, ntpServers, hostname, ipAddress, netmask, gateway, vlanId, userdata, metadata, vmNetworkId, definedTags, freeformTags, systemTags
    }

    public init(
                compartmentId: String? = nil,
                infrastructureId: String? = nil,
                cpusEnabled: Int? = nil,
                sshPublicKeys: [String],
                displayName: String? = nil,
                description: String? = nil,
                memorySizeInGBs: Double? = nil,
                bootStorageSizeInGBs: Double? = nil,
                dataStorageSizeInGBs: Double? = nil,
                imageId: String? = nil,
                serverId: String? = nil,
                domainName: String? = nil,
                timeZone: String? = nil,
                dnsServers: [String]? = nil,
                ntpServers: [String]? = nil,
                hostname: String? = nil,
                ipAddress: String? = nil,
                netmask: String? = nil,
                gateway: String? = nil,
                vlanId: String? = nil,
                userdata: String? = nil,
                metadata: [String: String]? = nil,
                vmNetworkId: String? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.infrastructureId = infrastructureId
        self.cpusEnabled = cpusEnabled
        self.sshPublicKeys = sshPublicKeys
        self.displayName = displayName
        self.description = description
        self.memorySizeInGBs = memorySizeInGBs
        self.bootStorageSizeInGBs = bootStorageSizeInGBs
        self.dataStorageSizeInGBs = dataStorageSizeInGBs
        self.imageId = imageId
        self.serverId = serverId
        self.domainName = domainName
        self.timeZone = timeZone
        self.dnsServers = dnsServers
        self.ntpServers = ntpServers
        self.hostname = hostname
        self.ipAddress = ipAddress
        self.netmask = netmask
        self.gateway = gateway
        self.vlanId = vlanId
        self.userdata = userdata
        self.metadata = metadata
        self.vmNetworkId = vmNetworkId
        self.definedTags = definedTags
        self.freeformTags = freeformTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
