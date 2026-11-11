import Foundation

// MARK: - WildcardSelectionKey

public struct WildcardSelectionKey: Codable, Sendable {

    public var name: String?
    public var expression: String?
    public var isDefault: Bool?

    private enum CodingKeys: String, CodingKey {
        case name, expression, isDefault
    }

    public init(
                name: String? = nil,
                expression: String? = nil,
                isDefault: Bool? = nil
    ) {
        self.name = name
        self.expression = expression
        self.isDefault = isDefault
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WildcardSelectionKey: CustomStringConvertible {
    public var description: String { "WildcardSelectionKey()" }
}