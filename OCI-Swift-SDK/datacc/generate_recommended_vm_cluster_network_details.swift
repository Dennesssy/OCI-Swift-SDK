import Foundation
import OCICommon

// MARK: - GenerateRecommendedVmClusterNetworkDetails

public struct GenerateRecommendedVmClusterNetworkDetails: Codable, Sendable {

    public var infrastructureId: String?
    public var compartmentId: String?
    public var displayName: String?
    public var vmNetworks: [InfoVmNetworkDetails]
    public var nodeCount: Int?
    public var listenerPort: Int?
    public var listenerPortSsl: Int?
    public var dnsServers: [String]?
    public var ntpServers: [String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case infrastructureId, compartmentId, displayName, vmNetworks, nodeCount, listenerPort, listenerPortSsl, dnsServers, ntpServers, definedTags, freeformTags
    }

    public init(
                infrastructureId: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                vmNetworks: [InfoVmNetworkDetails],
                nodeCount: Int? = nil,
                listenerPort: Int? = nil,
                listenerPortSsl: Int? = nil,
                dnsServers: [String]? = nil,
                ntpServers: [String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil
    ) {
        self.infrastructureId = infrastructureId
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.vmNetworks = vmNetworks
        self.nodeCount = nodeCount
        self.listenerPort = listenerPort
        self.listenerPortSsl = listenerPortSsl
        self.dnsServers = dnsServers
        self.ntpServers = ntpServers
        self.definedTags = definedTags
        self.freeformTags = freeformTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GenerateRecommendedVmClusterNetworkDetails: CustomStringConvertible {
    public var description: String { "GenerateRecommendedVmClusterNetworkDetails()" }
}