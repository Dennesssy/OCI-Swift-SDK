import Foundation
import OCICommon

// MARK: - UpdateTagDetails

public struct UpdateTagDetails: Codable, Sendable {

    public var description: String?
    public var isRetired: Bool?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var isCostTracking: Bool?
    public var validator: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case description, isRetired, freeformTags, definedTags, isCostTracking, validator
    }

    public init(
                description: String? = nil,
                isRetired: Bool? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                isCostTracking: Bool? = nil,
                validator: JSONValue? = nil
    ) {
        self.description = description
        self.isRetired = isRetired
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.isCostTracking = isCostTracking
        self.validator = validator
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
