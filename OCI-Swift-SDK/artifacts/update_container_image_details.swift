import Foundation
import OCICommon

// MARK: - UpdateContainerImageDetails

public struct UpdateContainerImageDetails: Codable, Sendable {

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

extension UpdateContainerImageDetails: CustomStringConvertible {
    public var description: String { "UpdateContainerImageDetails()" }
}