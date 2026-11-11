import Foundation

// MARK: - ValidationRequestPolicy

public struct ValidationRequestPolicy: Codable, Sendable {

    public var validationMode: ValidationRequestPolicyValidationModeEnum?

    private enum CodingKeys: String, CodingKey {
        case validationMode
    }

    public init(
                validationMode: ValidationRequestPolicyValidationModeEnum? = nil
    ) {
        self.validationMode = validationMode
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ValidationRequestPolicy: CustomStringConvertible {
    public var description: String { "ValidationRequestPolicy()" }
}