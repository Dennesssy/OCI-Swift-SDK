import Foundation

// MARK: - QueryParameterValidationRequestPolicy

public struct QueryParameterValidationRequestPolicy: Codable, Sendable {

    public var validationMode: QueryParameterValidationRequestPolicyValidationModeEnum?
    public var parameters: [QueryParameterValidationItem]?

    private enum CodingKeys: String, CodingKey {
        case validationMode, parameters
    }

    public init(
                validationMode: QueryParameterValidationRequestPolicyValidationModeEnum? = nil,
                parameters: [QueryParameterValidationItem]? = nil
    ) {
        self.validationMode = validationMode
        self.parameters = parameters
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QueryParameterValidationRequestPolicy: CustomStringConvertible {
    public var description: String { "QueryParameterValidationRequestPolicy()" }
}