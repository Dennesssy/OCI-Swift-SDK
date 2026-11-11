import Foundation

// MARK: - ListDelegationControlsRequest

public struct ListDelegationControlsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: DelegationControlLifecycleStateEnum?
    public var displayName: String?
    public var resourceType: ListDelegationControlsResourceTypeEnum?
    public var resourceId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListDelegationControlsSortOrderEnum?
    public var sortBy: ListDelegationControlsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, displayName, resourceType, resourceId, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: DelegationControlLifecycleStateEnum? = nil,
                displayName: String? = nil,
                resourceType: ListDelegationControlsResourceTypeEnum? = nil,
                resourceId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListDelegationControlsSortOrderEnum? = nil,
                sortBy: ListDelegationControlsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.resourceType = resourceType
        self.resourceId = resourceId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDelegationControlsRequest: CustomStringConvertible {
    public var description: String { "ListDelegationControlsRequest()" }
}

// MARK: - ListDelegationControlsResponse

public struct ListDelegationControlsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var delegationControlSummaryCollection: DelegationControlSummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, delegationControlSummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                delegationControlSummaryCollection: DelegationControlSummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.delegationControlSummaryCollection = delegationControlSummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDelegationControlsResponse: CustomStringConvertible {
    public var description: String { "ListDelegationControlsResponse()" }
}