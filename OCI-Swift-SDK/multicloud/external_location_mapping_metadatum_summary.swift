import Foundation
import OCICommon

// MARK: - ExternalLocationMappingMetadatumSummary

public struct ExternalLocationMappingMetadatumSummary: Codable, Sendable {

    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var externalLocation: ExternalLocation?
    public var ociPhysicalAd: String?
    public var ociLogicalAd: String?
    public var ociRegion: String?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case freeformTags, definedTags, externalLocation, ociPhysicalAd, ociLogicalAd, ociRegion, systemTags
    }

    public init(
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                externalLocation: ExternalLocation? = nil,
                ociPhysicalAd: String? = nil,
                ociLogicalAd: String? = nil,
                ociRegion: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.externalLocation = externalLocation
        self.ociPhysicalAd = ociPhysicalAd
        self.ociLogicalAd = ociLogicalAd
        self.ociRegion = ociRegion
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExternalLocationMappingMetadatumSummary: CustomStringConvertible {
    public var description: String { "ExternalLocationMappingMetadatumSummary()" }
}