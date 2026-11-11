import Foundation

// MARK: - Session

public struct Session: Codable, Sendable {

    public var id: String?
    public var timeCreated: Date?
    public var displayName: String?
    public var description: String?
    public var welcomeMessage: String?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case id, timeCreated, displayName, description, welcomeMessage, timeUpdated
    }

    public init(
                id: String? = nil,
                timeCreated: Date? = nil,
                displayName: String? = nil,
                description: String? = nil,
                welcomeMessage: String? = nil,
                timeUpdated: Date? = nil
    ) {
        self.id = id
        self.timeCreated = timeCreated
        self.displayName = displayName
        self.description = description
        self.welcomeMessage = welcomeMessage
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
