import Foundation

// MARK: - Dimension

public struct Dimension: Codable, Sendable {

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

extension Dimension: CustomStringConvertible {
    public var description: String { "Dimension()" }
}