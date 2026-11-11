import Foundation

// MARK: - RemoveUserFromGroupRequest

public struct RemoveUserFromGroupRequest: Codable, Sendable {
    public var userGroupMembershipId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case userGroupMembershipId, ifMatch, opcRequestId
    }

    public init(
                userGroupMembershipId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.userGroupMembershipId = userGroupMembershipId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveUserFromGroupRequest: CustomStringConvertible {
    public var description: String { "RemoveUserFromGroupRequest()" }
}

// MARK: - RemoveUserFromGroupResponse

public struct RemoveUserFromGroupResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveUserFromGroupResponse: CustomStringConvertible {
    public var description: String { "RemoveUserFromGroupResponse()" }
}