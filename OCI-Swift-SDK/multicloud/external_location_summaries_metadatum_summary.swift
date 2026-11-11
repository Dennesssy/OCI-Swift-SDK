import Foundation
import OCICommon

// MARK: - ExternalLocationSummariesMetadatumSummary

public struct ExternalLocationSummariesMetadatumSummary: Codable, Sendable {

    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var ociRegion: String?
    public var systemTags: [String: [String: JSONValue]]?
    public var externalLocation: ExternalLocationSummary?

    private enum CodingKeys: String, CodingKey {
        case freeformTags, definedTags, ociRegion, systemTags, externalLocation
    }

    public init(
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                ociRegion: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                externalLocation: ExternalLocationSummary? = nil
    ) {
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.ociRegion = ociRegion
        self.systemTags = systemTags
        self.externalLocation = externalLocation
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExternalLocationSummariesMetadatumSummary: CustomStringConvertible {
    public var description: String { "ExternalLocationSummariesMetadatumSummary()" }
}