import Foundation

// MARK: - Resources

public struct Resources: Codable, Sendable {

    public var id: String?
    public var name: String?
    public var resourceGroup: String?
    public var type: String?
    public var location: String?
    public var properties: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case id, name, resourceGroup, type, location, properties
    }

    public init(
                id: String? = nil,
                name: String? = nil,
                resourceGroup: String? = nil,
                type: String? = nil,
                location: String? = nil,
                properties: [String: String]? = nil
    ) {
        self.id = id
        self.name = name
        self.resourceGroup = resourceGroup
        self.type = type
        self.location = location
        self.properties = properties
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Resources: CustomStringConvertible {
    public var description: String { "Resources()" }
}