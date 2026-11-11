import Foundation
import OCICommon

// MARK: - CreateTagDetails

public struct CreateTagDetails: Codable, Sendable {

    public var name: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var isCostTracking: Bool?
    public var validator: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case name, description, freeformTags, definedTags, isCostTracking, validator
    }

    public init(
                name: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                isCostTracking: Bool? = nil,
                validator: JSONValue? = nil
    ) {
        self.name = name
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.isCostTracking = isCostTracking
        self.validator = validator
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
