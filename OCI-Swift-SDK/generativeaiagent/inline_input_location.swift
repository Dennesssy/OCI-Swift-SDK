import Foundation

// MARK: - InlineInputLocation

public struct InlineInputLocation: Codable, Sendable {

    public var content: String?

    private enum CodingKeys: String, CodingKey {
        case content
    }

    public init(
                content: String? = nil
    ) {
        self.content = content
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension InlineInputLocation: CustomStringConvertible {
    public var description: String { "InlineInputLocation()" }
}