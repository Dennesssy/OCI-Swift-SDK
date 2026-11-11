import Foundation

// MARK: - CustomerSecretKeySummary

public struct CustomerSecretKeySummary: Codable, Sendable {

    public var id: String?
    public var userId: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeExpires: Date?
    public var lifecycleState: CustomerSecretKeySummaryLifecycleStateEnum?
    public var inactiveStatus: Int64?

    private enum CodingKeys: String, CodingKey {
        case id, userId, displayName, timeCreated, timeExpires, lifecycleState, inactiveStatus
    }

    public init(
                id: String? = nil,
                userId: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeExpires: Date? = nil,
                lifecycleState: CustomerSecretKeySummaryLifecycleStateEnum? = nil,
                inactiveStatus: Int64? = nil
    ) {
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

extension CustomerSecretKeySummary: CustomStringConvertible {
    public var description: String { "CustomerSecretKeySummary()" }
}