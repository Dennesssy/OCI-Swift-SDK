import Foundation

// MARK: - ListDelegationControlResourcesRequest

public struct ListDelegationControlResourcesRequest: Codable, Sendable {
    public var delegationControlId: String?
    public var limit: Int?
    public var page: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case delegationControlId, limit, page, opcRequestId
    }

    public init(
                delegationControlId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.delegationControlId = delegationControlId
        self.limit = limit
        self.page = page
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDelegationControlResourcesRequest: CustomStringConvertible {
    public var description: String { "ListDelegationControlResourcesRequest()" }
}

// MARK: - ListDelegationControlResourcesResponse

public struct ListDelegationControlResourcesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var delegationControlResourceCollection: DelegationControlResourceCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, delegationControlResourceCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                delegationControlResourceCollection: DelegationControlResourceCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.delegationControlResourceCollection = delegationControlResourceCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDelegationControlResourcesResponse: CustomStringConvertible {
    public var description: String { "ListDelegationControlResourcesResponse()" }
}