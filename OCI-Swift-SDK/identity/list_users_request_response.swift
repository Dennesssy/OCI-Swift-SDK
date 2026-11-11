import Foundation

// MARK: - ListUsersRequest

public struct ListUsersRequest: Codable, Sendable {
    public var compartmentId: String?
    public var page: String?
    public var limit: Int?
    public var identityProviderId: String?
    public var externalIdentifier: String?
    public var name: String?
    public var sortBy: ListUsersSortByEnum?
    public var sortOrder: ListUsersSortOrderEnum?
    public var lifecycleState: UserLifecycleStateEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, page, limit, identityProviderId, externalIdentifier, name, sortBy, sortOrder, lifecycleState, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                identityProviderId: String? = nil,
                externalIdentifier: String? = nil,
                name: String? = nil,
                sortBy: ListUsersSortByEnum? = nil,
                sortOrder: ListUsersSortOrderEnum? = nil,
                lifecycleState: UserLifecycleStateEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.page = page
        self.limit = limit
        self.identityProviderId = identityProviderId
        self.externalIdentifier = externalIdentifier
        self.name = name
        self.sortBy = sortBy
        self.sortOrder = sortOrder
        self.lifecycleState = lifecycleState
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListUsersRequest: CustomStringConvertible {
    public var description: String { "ListUsersRequest()" }
}

// MARK: - ListUsersResponse

public struct ListUsersResponse: Codable, Sendable {
    public var items: [User]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [User]? = nil,
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

extension ListUsersResponse: CustomStringConvertible {
    public var description: String { "ListUsersResponse()" }
}