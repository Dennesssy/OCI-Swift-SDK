import Foundation
import OCICommon

// MARK: - BodyValidationRequestPolicy

public struct BodyValidationRequestPolicy: Codable, Sendable {

    public var content: [String: JSONValue]
    public var validationMode: BodyValidationRequestPolicyValidationModeEnum?
    public var required: Bool?

    private enum CodingKeys: String, CodingKey {
        case content, validationMode, required
    }

    public init(
                content: [String: JSONValue],
                validationMode: BodyValidationRequestPolicyValidationModeEnum? = nil,
                required: Bool? = nil
    ) {
        self.content = content
        self.validationMode = validationMode
        self.required = required
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BodyValidationRequestPolicy: CustomStringConvertible {
    public var description: String { "BodyValidationRequestPolicy()" }
}