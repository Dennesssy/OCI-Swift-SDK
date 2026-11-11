import Foundation

// MARK: - UiPassword

public struct UiPassword: Codable, Sendable {

    public var password: String?
    public var userId: String?
    public var timeCreated: Date?
    public var lifecycleState: UiPasswordLifecycleStateEnum?
    public var inactiveStatus: Int64?

    private enum CodingKeys: String, CodingKey {
        case password, userId, timeCreated, lifecycleState, inactiveStatus
    }

    public init(
                password: String? = nil,
                userId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: UiPasswordLifecycleStateEnum? = nil,
                inactiveStatus: Int64? = nil
    ) {
        self.password = password
        self.userId = userId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.inactiveStatus = inactiveStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UiPassword: CustomStringConvertible {
    public var description: String { "UiPassword()" }
}