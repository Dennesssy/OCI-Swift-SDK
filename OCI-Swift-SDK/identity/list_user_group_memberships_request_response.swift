import Foundation

// MARK: - ListUserGroupMembershipsRequest

public struct ListUserGroupMembershipsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var userId: String?
    public var groupId: String?
    public var page: String?
    public var limit: Int?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, userId, groupId, page, limit, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                userId: String? = nil,
                groupId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.userId = userId
        self.groupId = groupId
        self.page = page
        self.limit = limit
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListUserGroupMembershipsRequest: CustomStringConvertible {
    public var description: String { "ListUserGroupMembershipsRequest()" }
}

// MARK: - ListUserGroupMembershipsResponse

public struct ListUserGroupMembershipsResponse: Codable, Sendable {
    public var items: [UserGroupMembership]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [UserGroupMembership]? = nil,
                opcRequestId: String? = nil,
                opcNextPage: String? = nil
    ) {
        self.items = items
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListUserGroupMembershipsResponse: CustomStringConvertible {
    public var description: String { "ListUserGroupMembershipsResponse()" }
}