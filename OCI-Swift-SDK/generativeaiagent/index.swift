import Foundation

// MARK: - Index

public struct Index: Codable, Sendable {

    public var name: String?
    public var schema: IndexSchema?

    private enum CodingKeys: String, CodingKey {
        case name, schema
    }

    public init(
                name: String? = nil,
                schema: IndexSchema? = nil
    ) {
        self.name = name
        self.schema = schema
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Index: CustomStringConvertible {
    public var description: String { "Index()" }
}