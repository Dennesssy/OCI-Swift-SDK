import Foundation

// MARK: - DatabaseToolsDatabaseApiGatewayConfigPoolDefaultSummary

public struct DatabaseToolsDatabaseApiGatewayConfigPoolDefaultSummary: Codable, Sendable {

    public var key: String?
    public var displayName: String?
    public var databaseToolsConnectionId: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case key, displayName, databaseToolsConnectionId, timeCreated, timeUpdated
    }

    public init(
                key: String? = nil,
                displayName: String? = nil,
                databaseToolsConnectionId: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil
    ) {
        self.key = key
        self.displayName = displayName
        self.databaseToolsConnectionId = databaseToolsConnectionId
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DatabaseToolsDatabaseApiGatewayConfigPoolDefaultSummary: CustomStringConvertible {
    public var description: String { "DatabaseToolsDatabaseApiGatewayConfigPoolDefaultSummary()" }
}