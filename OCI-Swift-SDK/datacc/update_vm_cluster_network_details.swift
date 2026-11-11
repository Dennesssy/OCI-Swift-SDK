import Foundation
import OCICommon

// MARK: - UpdateVmClusterNetworkDetails

public struct UpdateVmClusterNetworkDetails: Codable, Sendable {

    public var displayName: String?
    public var scans: [ScanDetails]?
    public var listenerPort: Int?
    public var listenerPortSsl: Int?
    public var dnsServers: [String]?
    public var ntpServers: [String]?
    public var vmNetworks: [VmNetworkDetails]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, scans, listenerPort, listenerPortSsl, dnsServers, ntpServers, vmNetworks, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                scans: [ScanDetails]? = nil,
                listenerPort: Int? = nil,
                listenerPortSsl: Int? = nil,
                dnsServers: [String]? = nil,
                ntpServers: [String]? = nil,
                vmNetworks: [VmNetworkDetails]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.scans = scans
        self.listenerPort = listenerPort
        self.listenerPortSsl = listenerPortSsl
        self.dnsServers = dnsServers
        self.ntpServers = ntpServers
        self.vmNetworks = vmNetworks
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateVmClusterNetworkDetails: CustomStringConvertible {
    public var description: String { "UpdateVmClusterNetworkDetails()" }
}