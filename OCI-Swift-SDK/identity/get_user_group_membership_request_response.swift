import Foundation

// MARK: - GetUserGroupMembershipRequest

public struct GetUserGroupMembershipRequest: Codable, Sendable {
    public var userGroupMembershipId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case userGroupMembershipId, opcRequestId
    }

    public init(
                userGroupMembershipId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.userGroupMembershipId = userGroupMembershipId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetUserGroupMembershipRequest: CustomStringConvertible {
    public var description: String { "GetUserGroupMembershipRequest()" }
}

// MARK: - GetUserGroupMembershipResponse

public struct GetUserGroupMembershipResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var userGroupMembership: UserGroupMembership?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, userGroupMembership
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                userGroupMembership: UserGroupMembership? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.userGroupMembership = userGroupMembership
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetUserGroupMembershipResponse: CustomStringConvertible {
    public var description: String { "GetUserGroupMembershipResponse()" }
}