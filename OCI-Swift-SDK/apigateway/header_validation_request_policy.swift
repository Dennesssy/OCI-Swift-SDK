import Foundation

// MARK: - HeaderValidationRequestPolicy

public struct HeaderValidationRequestPolicy: Codable, Sendable {

    public var validationMode: HeaderValidationRequestPolicyValidationModeEnum?
    public var headers: [HeaderValidationItem]?

    private enum CodingKeys: String, CodingKey {
        case validationMode, headers
    }

    public init(
                validationMode: HeaderValidationRequestPolicyValidationModeEnum? = nil,
                headers: [HeaderValidationItem]? = nil
    ) {
        self.validationMode = validationMode
        self.headers = headers
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension HeaderValidationRequestPolicy: CustomStringConvertible {
    public var description: String { "HeaderValidationRequestPolicy()" }
}