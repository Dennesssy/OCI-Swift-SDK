import Foundation

// MARK: - ApiValidations

public struct ApiValidations: Codable, Sendable {

    public var validations: [ApiValidationDetails]

    private enum CodingKeys: String, CodingKey {
        case validations
    }

    public init(
                validations: [ApiValidationDetails]
    ) {
        self.validations = validations
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApiValidations: CustomStringConvertible {
    public var description: String { "ApiValidations()" }
}