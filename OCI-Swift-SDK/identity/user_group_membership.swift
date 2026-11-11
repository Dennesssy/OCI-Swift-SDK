import Foundation

// MARK: - UserGroupMembership

public struct UserGroupMembership: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var groupId: String?
    public var userId: String?
    public var timeCreated: Date?
    public var lifecycleState: UserGroupMembershipLifecycleStateEnum
    public var inactiveStatus: Int64?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, groupId, userId, timeCreated, lifecycleState, inactiveStatus
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                groupId: String? = nil,
                userId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: UserGroupMembershipLifecycleStateEnum,
                inactiveStatus: Int64? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.groupId = groupId
        self.userId = userId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.inactiveStatus = inactiveStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UserGroupMembership: CustomStringConvertible {
    public var description: String { "UserGroupMembership()" }
}