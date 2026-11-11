import Foundation

// MARK: - ListIdentityProviderGroupsRequest

public struct ListIdentityProviderGroupsRequest: Codable, Sendable {
    public var identityProviderId: String?
    public var page: String?
    public var limit: Int?
    public var name: String?
    public var lifecycleState: IdentityProviderLifecycleStateEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case identityProviderId, page, limit, name, lifecycleState, opcRequestId
    }

    public init(
                identityProviderId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                name: String? = nil,
                lifecycleState: IdentityProviderLifecycleStateEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.identityProviderId = identityProviderId
        self.page = page
        self.limit = limit
        self.name = name
        self.lifecycleState = lifecycleState
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListIdentityProviderGroupsRequest: CustomStringConvertible {
    public var description: String { "ListIdentityProviderGroupsRequest()" }
}

// MARK: - ListIdentityProviderGroupsResponse

public struct ListIdentityProviderGroupsResponse: Codable, Sendable {
    public var items: [IdentityProviderGroupSummary]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [IdentityProviderGroupSummary]? = nil,
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

extension ListIdentityProviderGroupsResponse: CustomStringConvertible {
    public var description: String { "ListIdentityProviderGroupsResponse()" }
}