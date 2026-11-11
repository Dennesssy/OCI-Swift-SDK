import Foundation

// MARK: - EnumSecurityAttributeValidator

public struct EnumSecurityAttributeValidator: Codable, Sendable {

    public var values: [String]?

    private enum CodingKeys: String, CodingKey {
        case values
    }

    public init(
                values: [String]? = nil
    ) {
        self.values = values
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension EnumSecurityAttributeValidator: CustomStringConvertible {
    public var description: String { "EnumSecurityAttributeValidator()" }
}