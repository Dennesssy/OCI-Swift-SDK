import Foundation

// MARK: - AuthToken

public struct AuthToken: Codable, Sendable {

    public var token: String?
    public var id: String?
    public var userId: String?
    public var description: String?
    public var timeCreated: Date?
    public var timeExpires: Date?
    public var lifecycleState: AuthTokenLifecycleStateEnum?
    public var inactiveStatus: Int64?

    private enum CodingKeys: String, CodingKey {
        case token, id, userId, description, timeCreated, timeExpires, lifecycleState, inactiveStatus
    }

    public init(
                token: String? = nil,
                id: String? = nil,
                userId: String? = nil,
                description: String? = nil,
                timeCreated: Date? = nil,
                timeExpires: Date? = nil,
                lifecycleState: AuthTokenLifecycleStateEnum? = nil,
                inactiveStatus: Int64? = nil
    ) {
        self.token = token
        self.id = id
        self.userId = userId
        self.description = description
        self.timeCreated = timeCreated
        self.timeExpires = timeExpires
        self.lifecycleState = lifecycleState
        self.inactiveStatus = inactiveStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
