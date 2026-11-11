import Foundation
import OCICommon

// MARK: - CreateVmClusterNetworkDetails

public struct CreateVmClusterNetworkDetails: Codable, Sendable {

    public var compartmentId: String?
    public var infrastructureId: String?
    public var displayName: String?
    public var vmNetworks: [VmNetworkDetails]
    public var nodeCount: Int?
    public var scans: [ScanDetails]?
    public var listenerPort: Int?
    public var listenerPortSsl: Int?
    public var dnsServers: [String]?
    public var ntpServers: [String]?
    public var consumerType: VmNetworkConsumerTypeEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, infrastructureId, displayName, vmNetworks, nodeCount, scans, listenerPort, listenerPortSsl, dnsServers, ntpServers, consumerType, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                infrastructureId: String? = nil,
                displayName: String? = nil,
                vmNetworks: [VmNetworkDetails],
                nodeCount: Int? = nil,
                scans: [ScanDetails]? = nil,
                listenerPort: Int? = nil,
                listenerPortSsl: Int? = nil,
                dnsServers: [String]? = nil,
                ntpServers: [String]? = nil,
                consumerType: VmNetworkConsumerTypeEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.infrastructureId = infrastructureId
        self.displayName = displayName
        self.vmNetworks = vmNetworks
        self.nodeCount = nodeCount
        self.scans = scans
        self.listenerPort = listenerPort
        self.listenerPortSsl = listenerPortSsl
        self.dnsServers = dnsServers
        self.ntpServers = ntpServers
        self.consumerType = consumerType
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateVmClusterNetworkDetails: CustomStringConvertible {
    public var description: String { "CreateVmClusterNetworkDetails()" }
}