import Foundation

// MARK: - CustomerSecretKey

public struct CustomerSecretKey: Codable, Sendable {

    public var key: String?
    public var id: String?
    public var userId: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeExpires: Date?
    public var lifecycleState: CustomerSecretKeyLifecycleStateEnum?
    public var inactiveStatus: Int64?

    private enum CodingKeys: String, CodingKey {
        case key, id, userId, displayName, timeCreated, timeExpires, lifecycleState, inactiveStatus
    }

    public init(
                key: String? = nil,
                id: String? = nil,
                userId: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeExpires: Date? = nil,
                lifecycleState: CustomerSecretKeyLifecycleStateEnum? = nil,
                inactiveStatus: Int64? = nil
    ) {
        self.key = key
        self.id = id
        self.userId = userId
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeExpires = timeExpires
        self.lifecycleState = lifecycleState
        self.inactiveStatus = inactiveStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CustomerSecretKey: CustomStringConvertible {
    public var description: String { "CustomerSecretKey()" }
}