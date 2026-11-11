import Foundation

// MARK: - ConnectionValidationResult

public struct ConnectionValidationResult: Codable, Sendable {

    public var result: ConnectionValidationResultResultEnum?
    public var timeValidated: Date?
    public var message: String?

    private enum CodingKeys: String, CodingKey {
        case result, timeValidated, message
    }

    public init(
                result: ConnectionValidationResultResultEnum? = nil,
                timeValidated: Date? = nil,
                message: String? = nil
    ) {
        self.result = result
        self.timeValidated = timeValidated
        self.message = message
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ConnectionValidationResult: CustomStringConvertible {
    public var description: String { "ConnectionValidationResult()" }
}