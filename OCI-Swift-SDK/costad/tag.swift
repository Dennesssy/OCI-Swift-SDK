import Foundation

// MARK: - Tag

public struct Tag: Codable, Sendable {

    public var namespace: String?
    public var key: String?
    public var value: String?

    private enum CodingKeys: String, CodingKey {
        case namespace, key, value
    }

    public init(
                namespace: String? = nil,
                key: String? = nil,
                value: String? = nil
    ) {
        self.namespace = namespace
        self.key = key
        self.value = value
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Tag: CustomStringConvertible {
    public var description: String { "Tag()" }
}