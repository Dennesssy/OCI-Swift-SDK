import Foundation

// MARK: - CloudServiceProviderNetworkMetadataItem

public struct CloudServiceProviderNetworkMetadataItem: Codable, Sendable {

    public var region: String?
    public var odbNetworkId: String?
    public var cidrBlocks: [String]?
    public var networkAnchorUri: String?
    public var cspAdditionalProperties: [String: String]?
    public var dnsForwardingConfig: [[String: String]]?

    private enum CodingKeys: String, CodingKey {
        case region, odbNetworkId, cidrBlocks, networkAnchorUri, cspAdditionalProperties, dnsForwardingConfig
    }

    public init(
                region: String? = nil,
                odbNetworkId: String? = nil,
                cidrBlocks: [String]? = nil,
                networkAnchorUri: String? = nil,
                cspAdditionalProperties: [String: String]? = nil,
                dnsForwardingConfig: [[String: String]]? = nil
    ) {
        self.region = region
        self.odbNetworkId = odbNetworkId
        self.cidrBlocks = cidrBlocks
        self.networkAnchorUri = networkAnchorUri
        self.cspAdditionalProperties = cspAdditionalProperties
        self.dnsForwardingConfig = dnsForwardingConfig
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CloudServiceProviderNetworkMetadataItem: CustomStringConvertible {
    public var description: String { "CloudServiceProviderNetworkMetadataItem()" }
}