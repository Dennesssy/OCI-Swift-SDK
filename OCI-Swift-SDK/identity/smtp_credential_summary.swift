import Foundation

// MARK: - SmtpCredentialSummary

public struct SmtpCredentialSummary: Codable, Sendable {

    public var username: String?
    public var id: String?
    public var userId: String?
    public var description: String?
    public var timeCreated: Date?
    public var timeExpires: Date?
    public var lifecycleState: SmtpCredentialSummaryLifecycleStateEnum?
    public var inactiveStatus: Int64?

    private enum CodingKeys: String, CodingKey {
        case username, id, userId, description, timeCreated, timeExpires, lifecycleState, inactiveStatus
    }

    public init(
                username: String? = nil,
                id: String? = nil,
                userId: String? = nil,
                description: String? = nil,
                timeCreated: Date? = nil,
                timeExpires: Date? = nil,
                lifecycleState: SmtpCredentialSummaryLifecycleStateEnum? = nil,
                inactiveStatus: Int64? = nil
    ) {
        self.username = username
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
