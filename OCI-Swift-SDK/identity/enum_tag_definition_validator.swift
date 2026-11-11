import Foundation

// MARK: - EnumTagDefinitionValidator

public struct EnumTagDefinitionValidator: Codable, Sendable {

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

extension EnumTagDefinitionValidator: CustomStringConvertible {
    public var description: String { "EnumTagDefinitionValidator()" }
}