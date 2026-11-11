import Foundation

// MARK: - ApiSchemaInlineInputLocation

public struct ApiSchemaInlineInputLocation: Codable, Sendable {

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

extension ApiSchemaInlineInputLocation: CustomStringConvertible {
    public var description: String { "ApiSchemaInlineInputLocation()" }
}