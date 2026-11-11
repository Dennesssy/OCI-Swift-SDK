import Foundation
import OCICommon

// MARK: - UpdateSecurityAttributeDetails

public struct UpdateSecurityAttributeDetails: Codable, Sendable {

    public var description: String?
    public var isRetired: Bool?
    public var validator: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case description, isRetired, validator
    }

    public init(
                description: String? = nil,
                isRetired: Bool? = nil,
                validator: JSONValue? = nil
    ) {
        self.description = description
        self.isRetired = isRetired
        self.validator = validator
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
