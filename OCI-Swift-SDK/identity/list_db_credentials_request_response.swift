import Foundation

// MARK: - ListDbCredentialsRequest

public struct ListDbCredentialsRequest: Codable, Sendable {
    public var userId: String?
    public var opcRequestId: String?
    public var page: String?
    public var limit: Int?
    public var name: String?
    public var sortBy: ListDbCredentialsSortByEnum?
    public var sortOrder: ListDbCredentialsSortOrderEnum?
    public var lifecycleState: DbCredentialLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case userId, opcRequestId, page, limit, name, sortBy, sortOrder, lifecycleState
    }

    public init(
                userId: String? = nil,
                opcRequestId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                name: String? = nil,
                sortBy: ListDbCredentialsSortByEnum? = nil,
                sortOrder: ListDbCredentialsSortOrderEnum? = nil,
                lifecycleState: DbCredentialLifecycleStateEnum? = nil
    ) {
        self.userId = userId
        self.opcRequestId = opcRequestId
        self.page = page
        self.limit = limit
        self.name = name
        self.sortBy = sortBy
        self.sortOrder = sortOrder
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDbCredentialsRequest: CustomStringConvertible {
    public var description: String { "ListDbCredentialsRequest()" }
}

// MARK: - ListDbCredentialsResponse

public struct ListDbCredentialsResponse: Codable, Sendable {
    public var items: [DbCredentialSummary]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [DbCredentialSummary]? = nil,
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

extension ListDbCredentialsResponse: CustomStringConvertible {
    public var description: String { "ListDbCredentialsResponse()" }
}