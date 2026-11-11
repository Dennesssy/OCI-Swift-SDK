import Foundation
import OCICommon

// MARK: - UpdateObjectStorageLinkDetails

public struct UpdateObjectStorageLinkDetails: Codable, Sendable {

    public var displayName: String?
    public var isOverwrite: Bool?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, isOverwrite, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                isOverwrite: Bool? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.isOverwrite = isOverwrite
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateObjectStorageLinkDetails: CustomStringConvertible {
    public var description: String { "UpdateObjectStorageLinkDetails()" }
}