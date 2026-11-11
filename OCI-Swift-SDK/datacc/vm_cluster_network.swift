import Foundation
import OCICommon

// MARK: - VmClusterNetwork

public struct VmClusterNetwork: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var infrastructureId: String?
    public var displayName: String?
    public var scans: [ScanDetails]
    public var vmNetworks: [VmNetworkDetails]
    public var nodeCount: Int?
    public var baseVmClusterId: String?
    public var isScanEnabled: Bool?
    public var listenerPort: Int?
    public var listenerPortSsl: Int?
    public var dnsServers: [String]?
    public var ntpServers: [String]?
    public var lifecycleState: VmClusterNetworkLifecycleStateEnum?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var associatedResourceId: String?
    public var consumerType: VmNetworkConsumerTypeEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, infrastructureId, displayName, scans, vmNetworks, nodeCount, baseVmClusterId, isScanEnabled, listenerPort, listenerPortSsl, dnsServers, ntpServers, lifecycleState, timeCreated, timeUpdated, lifecycleDetails, associatedResourceId, consumerType, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                infrastructureId: String? = nil,
                displayName: String? = nil,
                scans: [ScanDetails],
                vmNetworks: [VmNetworkDetails],
                nodeCount: Int? = nil,
                baseVmClusterId: String? = nil,
                isScanEnabled: Bool? = nil,
                listenerPort: Int? = nil,
                listenerPortSsl: Int? = nil,
                dnsServers: [String]? = nil,
                ntpServers: [String]? = nil,
                lifecycleState: VmClusterNetworkLifecycleStateEnum? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                associatedResourceId: String? = nil,
                consumerType: VmNetworkConsumerTypeEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.infrastructureId = infrastructureId
        self.displayName = displayName
        self.scans = scans
        self.vmNetworks = vmNetworks
        self.nodeCount = nodeCount
        self.baseVmClusterId = baseVmClusterId
        self.isScanEnabled = isScanEnabled
        self.listenerPort = listenerPort
        self.listenerPortSsl = listenerPortSsl
        self.dnsServers = dnsServers
        self.ntpServers = ntpServers
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.associatedResourceId = associatedResourceId
        self.consumerType = consumerType
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension VmClusterNetwork: CustomStringConvertible {
    public var description: String { "VmClusterNetwork()" }
}