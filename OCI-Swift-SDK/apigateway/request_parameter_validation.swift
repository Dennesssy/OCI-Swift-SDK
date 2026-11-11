import Foundation

// MARK: - RequestParameterValidation

public struct RequestParameterValidation: Codable, Sendable {

    public var name: String?

    private enum CodingKeys: String, CodingKey {
        case name
    }

    public init(
                name: String? = nil
    ) {
        self.name = name
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RequestParameterValidation: CustomStringConvertible {
    public var description: String { "RequestParameterValidation()" }
}