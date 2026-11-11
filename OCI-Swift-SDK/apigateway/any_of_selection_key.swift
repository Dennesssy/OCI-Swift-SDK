import Foundation

// MARK: - AnyOfSelectionKey

public struct AnyOfSelectionKey: Codable, Sendable {

    public var name: String?
    public var isDefault: Bool?
    public var values: [String]?

    private enum CodingKeys: String, CodingKey {
        case name, isDefault, values
    }

    public init(
                name: String? = nil,
                isDefault: Bool? = nil,
                values: [String]? = nil
    ) {
        self.name = name
        self.isDefault = isDefault
        self.values = values
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AnyOfSelectionKey: CustomStringConvertible {
    public var description: String { "AnyOfSelectionKey()" }
}