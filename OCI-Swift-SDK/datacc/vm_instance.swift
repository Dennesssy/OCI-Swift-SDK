import Foundation
import OCICommon

// MARK: - VmInstance

public struct VmInstance: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var infrastructureId: String?
    public var cpusEnabled: Int?
    public var sshPublicKeys: [String]
    public var lifecycleState: VmInstanceLifecycleStateEnum
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var timeZone: String?
    public var displayName: String?
    public var description: String?
    public var memorySizeInGBs: Double?
    public var bootStorageSizeInGBs: Double?
    public var dataStorageSizeInGBs: Double?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?
    public var systemTags: [String: [String: JSONValue]]?
    public var imageId: String?
    public var serverId: String?
    public var lifecycleDetails: String?
    public var domainName: String?
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

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, infrastructureId, cpusEnabled, sshPublicKeys, lifecycleState, timeCreated, timeUpdated, timeZone, displayName, description, memorySizeInGBs, bootStorageSizeInGBs, dataStorageSizeInGBs, definedTags, freeformTags, systemTags, imageId, serverId, lifecycleDetails, domainName, dnsServers, ntpServers, hostname, ipAddress, netmask, gateway, vlanId, userdata, metadata, vmNetworkId
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                infrastructureId: String? = nil,
                cpusEnabled: Int? = nil,
                sshPublicKeys: [String],
                lifecycleState: VmInstanceLifecycleStateEnum,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                timeZone: String? = nil,
                displayName: String? = nil,
                description: String? = nil,
                memorySizeInGBs: Double? = nil,
                bootStorageSizeInGBs: Double? = nil,
                dataStorageSizeInGBs: Double? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                imageId: String? = nil,
                serverId: String? = nil,
                lifecycleDetails: String? = nil,
                domainName: String? = nil,
                dnsServers: [String]? = nil,
                ntpServers: [String]? = nil,
                hostname: String? = nil,
                ipAddress: String? = nil,
                netmask: String? = nil,
                gateway: String? = nil,
                vlanId: String? = nil,
                userdata: String? = nil,
                metadata: [String: String]? = nil,
                vmNetworkId: String? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.infrastructureId = infrastructureId
        self.cpusEnabled = cpusEnabled
        self.sshPublicKeys = sshPublicKeys
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.timeZone = timeZone
        self.displayName = displayName
        self.description = description
        self.memorySizeInGBs = memorySizeInGBs
        self.bootStorageSizeInGBs = bootStorageSizeInGBs
        self.dataStorageSizeInGBs = dataStorageSizeInGBs
        self.definedTags = definedTags
        self.freeformTags = freeformTags
        self.systemTags = systemTags
        self.imageId = imageId
        self.serverId = serverId
        self.lifecycleDetails = lifecycleDetails
        self.domainName = domainName
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
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
