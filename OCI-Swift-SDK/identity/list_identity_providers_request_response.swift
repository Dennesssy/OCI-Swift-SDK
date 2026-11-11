import Foundation
import OCICommon

// MARK: - ListIdentityProvidersRequest

public struct ListIdentityProvidersRequest: Codable, Sendable {
    public var `protocol`: ListIdentityProvidersProtocolEnum
    public var compartmentId: String?
    public var page: String?
    public var limit: Int?
    public var name: String?
    public var sortBy: ListIdentityProvidersSortByEnum?
    public var sortOrder: ListIdentityProvidersSortOrderEnum?
    public var lifecycleState: IdentityProviderLifecycleStateEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case `protocol`, compartmentId, page, limit, name, sortBy, sortOrder, lifecycleState, opcRequestId
    }

    public init(
                `protocol`: ListIdentityProvidersProtocolEnum,
                compartmentId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                name: String? = nil,
                sortBy: ListIdentityProvidersSortByEnum? = nil,
                sortOrder: ListIdentityProvidersSortOrderEnum? = nil,
                lifecycleState: IdentityProviderLifecycleStateEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.`protocol` = `protocol`
        self.compartmentId = compartmentId
        self.page = page
        self.limit = limit
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

extension ListIdentityProvidersRequest: CustomStringConvertible {
    public var description: String { "ListIdentityProvidersRequest()" }
}

// MARK: - ListIdentityProvidersResponse

public struct ListIdentityProvidersResponse: Codable, Sendable {
    public var items: [JSONValue]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [JSONValue]? = nil,
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

extension ListIdentityProvidersResponse: CustomStringConvertible {
    public var description: String { "ListIdentityProvidersResponse()" }
}