import Foundation

// MARK: - DatabaseObject

public struct DatabaseObject: Codable, Sendable {

    public var type: DatabaseObjectTypeEnum
    public var name: String?
    public var description: String?

    private enum CodingKeys: String, CodingKey {
        case type, name, description
    }

    public init(
                type: DatabaseObjectTypeEnum,
                name: String? = nil,
                description: String? = nil
    ) {
        self.type = type
        self.name = name
        self.description = description
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
