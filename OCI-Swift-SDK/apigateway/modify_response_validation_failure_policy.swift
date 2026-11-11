import Foundation

// MARK: - ModifyResponseValidationFailurePolicy

public struct ModifyResponseValidationFailurePolicy: Codable, Sendable {

    public var responseCode: String?
    public var responseMessage: String?
    public var responseHeaderTransformations: HeaderTransformationPolicy?

    private enum CodingKeys: String, CodingKey {
        case responseCode, responseMessage, responseHeaderTransformations
    }

    public init(
                responseCode: String? = nil,
                responseMessage: String? = nil,
                responseHeaderTransformations: HeaderTransformationPolicy? = nil
    ) {
        self.responseCode = responseCode
        self.responseMessage = responseMessage
        self.responseHeaderTransformations = responseHeaderTransformations
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ModifyResponseValidationFailurePolicy: CustomStringConvertible {
    public var description: String { "ModifyResponseValidationFailurePolicy()" }
}