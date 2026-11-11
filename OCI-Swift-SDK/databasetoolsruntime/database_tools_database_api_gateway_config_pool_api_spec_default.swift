import Foundation

// MARK: - DatabaseToolsDatabaseApiGatewayConfigPoolApiSpecDefault

public struct DatabaseToolsDatabaseApiGatewayConfigPoolApiSpecDefault: Codable, Sendable {

    public var key: String?
    public var displayName: String?
    public var content: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case key, displayName, content, timeCreated, timeUpdated
    }

    public init(
                key: String? = nil,
                displayName: String? = nil,
                content: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil
    ) {
        self.key = key
        self.displayName = displayName
        self.content = content
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DatabaseToolsDatabaseApiGatewayConfigPoolApiSpecDefault: CustomStringConvertible {
    public var description: String { "DatabaseToolsDatabaseApiGatewayConfigPoolApiSpecDefault()" }
}