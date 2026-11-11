import Foundation

// MARK: - GcpCloudServiceProviderMetadataItem

public struct GcpCloudServiceProviderMetadataItem: Codable, Sendable {

    public var resourceAnchorName: String?
    public var projectNumber: String?
    public var region: String?
    public var cspResourceAnchorId: String?
    public var cspResourceAnchorName: String?
    public var resourceAnchorUri: String?
    public var cspAdditionalProperties: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case resourceAnchorName, projectNumber, region, cspResourceAnchorId, cspResourceAnchorName, resourceAnchorUri, cspAdditionalProperties
    }

    public init(
                resourceAnchorName: String? = nil,
                projectNumber: String? = nil,
                region: String? = nil,
                cspResourceAnchorId: String? = nil,
                cspResourceAnchorName: String? = nil,
                resourceAnchorUri: String? = nil,
                cspAdditionalProperties: [String: String]? = nil
    ) {
        self.resourceAnchorName = resourceAnchorName
        self.projectNumber = projectNumber
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

extension GcpCloudServiceProviderMetadataItem: CustomStringConvertible {
    public var description: String { "GcpCloudServiceProviderMetadataItem()" }
}