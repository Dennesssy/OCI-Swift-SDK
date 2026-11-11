import Foundation

// MARK: - Attribute

public struct Attribute: Codable, Sendable {

    public var attributeName: String?
    public var attributeValue: String?

    private enum CodingKeys: String, CodingKey {
        case attributeName, attributeValue
    }

    public init(
                attributeName: String? = nil,
                attributeValue: String? = nil
    ) {
        self.attributeName = attributeName
        self.attributeValue = attributeValue
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Attribute: CustomStringConvertible {
    public var description: String { "Attribute()" }
}