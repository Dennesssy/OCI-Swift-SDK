import Foundation
import OCICommon

// MARK: - ExternalLocationsMetadatumSummary

public struct ExternalLocationsMetadatumSummary: Codable, Sendable {

    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var externalLocation: ExternalLocationDetail?
    public var ociPhysicalAd: String?
    public var ociRegion: String?
    public var cpgId: String?
    public var clusterPlacementGroupId: String?
    public var systemTags: [String: [String: JSONValue]]?
    public var ociLogicalAd: String?
    public var partnerCloudName: String?
    public var partnerCloudAccountName: String?
    public var partnerCloudAccountUrl: String?

    private enum CodingKeys: String, CodingKey {
        case freeformTags, definedTags, externalLocation, ociPhysicalAd, ociRegion, cpgId, clusterPlacementGroupId, systemTags, ociLogicalAd, partnerCloudName, partnerCloudAccountName, partnerCloudAccountUrl
    }

    public init(
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                externalLocation: ExternalLocationDetail? = nil,
                ociPhysicalAd: String? = nil,
                ociRegion: String? = nil,
                cpgId: String? = nil,
                clusterPlacementGroupId: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                ociLogicalAd: String? = nil,
                partnerCloudName: String? = nil,
                partnerCloudAccountName: String? = nil,
                partnerCloudAccountUrl: String? = nil
    ) {
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.externalLocation = externalLocation
        self.ociPhysicalAd = ociPhysicalAd
        self.ociRegion = ociRegion
        self.cpgId = cpgId
        self.clusterPlacementGroupId = clusterPlacementGroupId
        self.systemTags = systemTags
        self.ociLogicalAd = ociLogicalAd
        self.partnerCloudName = partnerCloudName
        self.partnerCloudAccountName = partnerCloudAccountName
        self.partnerCloudAccountUrl = partnerCloudAccountUrl
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExternalLocationsMetadatumSummary: CustomStringConvertible {
    public var description: String { "ExternalLocationsMetadatumSummary()" }
}