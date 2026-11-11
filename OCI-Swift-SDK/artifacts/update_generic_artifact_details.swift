import Foundation
import OCICommon

// MARK: - UpdateGenericArtifactDetails

public struct UpdateGenericArtifactDetails: Codable, Sendable {

    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case freeformTags, definedTags
    }

    public init(
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateGenericArtifactDetails: CustomStringConvertible {
    public var description: String { "UpdateGenericArtifactDetails()" }
}