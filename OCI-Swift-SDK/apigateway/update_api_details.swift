import Foundation
import OCICommon

// MARK: - UpdateApiDetails

public struct UpdateApiDetails: Codable, Sendable {

    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var content: String?

    private enum CodingKeys: String, CodingKey {
        case displayName, freeformTags, definedTags, content
    }

    public init(
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                content: String? = nil
    ) {
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.content = content
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateApiDetails: CustomStringConvertible {
    public var description: String { "UpdateApiDetails()" }
}