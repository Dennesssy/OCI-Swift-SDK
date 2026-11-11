import Foundation

// MARK: - AzureCloudServiceProviderMetadataItem

public struct AzureCloudServiceProviderMetadataItem: Codable, Sendable {

    public var resourceAnchorName: String?
    public var resourceGroup: String?
    public var subscription: String?
    public var region: String?
    public var cspResourceAnchorId: String?
    public var cspResourceAnchorName: String?
    public var resourceAnchorUri: String?
    public var cspAdditionalProperties: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case resourceAnchorName, resourceGroup, subscription, region, cspResourceAnchorId, cspResourceAnchorName, resourceAnchorUri, cspAdditionalProperties
    }

    public init(
                resourceAnchorName: String? = nil,
                resourceGroup: String? = nil,
                subscription: String? = nil,
                region: String? = nil,
                cspResourceAnchorId: String? = nil,
                cspResourceAnchorName: String? = nil,
                resourceAnchorUri: String? = nil,
                cspAdditionalProperties: [String: String]? = nil
    ) {
        self.resourceAnchorName = resourceAnchorName
        self.resourceGroup = resourceGroup
        self.subscription = subscription
        self.region = region
        self.cspResourceAnchorId = cspResourceAnchorId
        self.cspResourceAnchorName = cspResourceAnchorName
        self.resourceAnchorUri = resourceAnchorUri
        self.cspAdditionalProperties = cspAdditionalProperties
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AzureCloudServiceProviderMetadataItem: CustomStringConvertible {
    public var description: String { "AzureCloudServiceProviderMetadataItem()" }
}