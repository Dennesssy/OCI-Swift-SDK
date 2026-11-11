import Foundation

// MARK: - QueryParameterValidationItem

public struct QueryParameterValidationItem: Codable, Sendable {

    public var name: String?
    public var required: Bool?

    private enum CodingKeys: String, CodingKey {
        case name, required
    }

    public init(
                name: String? = nil,
                required: Bool? = nil
    ) {
        self.name = name
        self.required = required
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QueryParameterValidationItem: CustomStringConvertible {
    public var description: String { "QueryParameterValidationItem()" }
}