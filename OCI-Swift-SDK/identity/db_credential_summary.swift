import Foundation

// MARK: - DbCredentialSummary

public struct DbCredentialSummary: Codable, Sendable {

    public var id: String?
    public var userId: String?
    public var description: String?
    public var timeCreated: Date?
    public var timeExpires: Date?
    public var lifecycleState: DbCredentialLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case id, userId, description, timeCreated, timeExpires, lifecycleState
    }

    public init(
                id: String? = nil,
                userId: String? = nil,
                description: String? = nil,
                timeCreated: Date? = nil,
                timeExpires: Date? = nil,
                lifecycleState: DbCredentialLifecycleStateEnum? = nil
    ) {
        self.id = id
        self.userId = userId
        self.description = description
        self.timeCreated = timeCreated
        self.timeExpires = timeExpires
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
