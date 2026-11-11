import Foundation

// MARK: - SwiftPassword

public struct SwiftPassword: Codable, Sendable {

    public var password: String?
    public var id: String?
    public var userId: String?
    public var description: String?
    public var timeCreated: Date?
    public var expiresOn: Date?
    public var lifecycleState: SwiftPasswordLifecycleStateEnum?
    public var inactiveStatus: Int64?

    private enum CodingKeys: String, CodingKey {
        case password, id, userId, description, timeCreated, expiresOn, lifecycleState, inactiveStatus
    }

    public init(
                password: String? = nil,
                id: String? = nil,
                userId: String? = nil,
                description: String? = nil,
                timeCreated: Date? = nil,
                expiresOn: Date? = nil,
                lifecycleState: SwiftPasswordLifecycleStateEnum? = nil,
                inactiveStatus: Int64? = nil
    ) {
        self.password = password
        self.id = id
        self.userId = userId
        self.description = description
        self.timeCreated = timeCreated
        self.expiresOn = expiresOn
        self.lifecycleState = lifecycleState
        self.inactiveStatus = inactiveStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
