import Foundation

// MARK: - HeaderValidationItem

public struct HeaderValidationItem: Codable, Sendable {

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

extension HeaderValidationItem: CustomStringConvertible {
    public var description: String { "HeaderValidationItem()" }
}