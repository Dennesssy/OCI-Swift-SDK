import Foundation
import OCICommon

// MARK: - CreateSecurityAttributeDetails

public struct CreateSecurityAttributeDetails: Codable, Sendable {

    public var name: String?
    public var description: String?
    public var validator: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case name, description, validator
    }

    public init(
                name: String? = nil,
                description: String? = nil,
                validator: JSONValue? = nil
    ) {
        self.name = name
        self.description = description
        self.validator = validator
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
