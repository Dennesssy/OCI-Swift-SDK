import Foundation

// MARK: - DbCredential

public struct DbCredential: Codable, Sendable {

    public var id: String?
    public var userId: String?
    public var timeCreated: Date?
    public var timeExpires: Date?
    public var lifecycleState: DbCredentialLifecycleStateEnum?
    public var lifecycleDetails: Int64?

    private enum CodingKeys: String, CodingKey {
        case id, userId, timeCreated, timeExpires, lifecycleState, lifecycleDetails
    }

    public init(
                id: String? = nil,
                userId: String? = nil,
                timeCreated: Date? = nil,
                timeExpires: Date? = nil,
                lifecycleState: DbCredentialLifecycleStateEnum? = nil,
                lifecycleDetails: Int64? = nil
    ) {
        self.id = id
        self.userId = userId
        self.timeCreated = timeCreated
        self.timeExpires = timeExpires
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DbCredential: CustomStringConvertible {
    public var description: String { "DbCredential()" }
}