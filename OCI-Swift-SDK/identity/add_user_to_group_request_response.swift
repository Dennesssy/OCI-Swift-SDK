import Foundation

// MARK: - AddUserToGroupRequest

public struct AddUserToGroupRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var addUserToGroupDetails: AddUserToGroupDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, addUserToGroupDetails, opcRetryToken
    }

    public init(
                opcRequestId: String? = nil,
                addUserToGroupDetails: AddUserToGroupDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.addUserToGroupDetails = addUserToGroupDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AddUserToGroupRequest: CustomStringConvertible {
    public var description: String { "AddUserToGroupRequest()" }
}

// MARK: - AddUserToGroupResponse

public struct AddUserToGroupResponse: Codable, Sendable {
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

extension AddUserToGroupResponse: CustomStringConvertible {
    public var description: String { "AddUserToGroupResponse()" }
}