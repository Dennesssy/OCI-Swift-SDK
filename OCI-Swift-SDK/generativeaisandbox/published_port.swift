import Foundation

// MARK: - PublishedPort

public struct PublishedPort: Codable, Sendable {

    public var key: String?
    public var value: String?

    private enum CodingKeys: String, CodingKey {
        case key, value
    }

    public init(
                key: String? = nil,
                value: String? = nil
    ) {
        self.key = key
        self.value = value
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PublishedPort: CustomStringConvertible {
    public var description: String { "PublishedPort()" }
}