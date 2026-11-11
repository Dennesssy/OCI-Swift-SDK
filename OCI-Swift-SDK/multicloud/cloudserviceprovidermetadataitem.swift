import Foundation

// MARK: - cloudserviceprovidermetadataitem

public struct cloudserviceprovidermetadataitem: Codable, Sendable {

    public var jsonData: Data?
    public var region: String?
    public var cspResourceAnchorId: String?
    public var cspResourceAnchorName: String?
    public var resourceAnchorUri: String?
    public var cspAdditionalProperties: [String: String]?
    public var resourceAnchorName: String?
    public var subscriptionType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, region, cspResourceAnchorId, cspResourceAnchorName, resourceAnchorUri, cspAdditionalProperties, resourceAnchorName, subscriptionType
    }

    public init(
                jsonData: Data? = nil,
                region: String? = nil,
                cspResourceAnchorId: String? = nil,
                cspResourceAnchorName: String? = nil,
                resourceAnchorUri: String? = nil,
                cspAdditionalProperties: [String: String]? = nil,
                resourceAnchorName: String? = nil,
                subscriptionType: String? = nil
    ) {
        self.jsonData = jsonData
        self.region = region
        self.cspResourceAnchorId = cspResourceAnchorId
        self.cspResourceAnchorName = cspResourceAnchorName
        self.resourceAnchorUri = resourceAnchorUri
        self.cspAdditionalProperties = cspAdditionalProperties
        self.resourceAnchorName = resourceAnchorName
        self.subscriptionType = subscriptionType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension cloudserviceprovidermetadataitem: CustomStringConvertible {
    public var description: String { "cloudserviceprovidermetadataitem()" }
}