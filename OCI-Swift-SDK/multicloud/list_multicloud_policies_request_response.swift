import Foundation

// MARK: - ListMulticloudPoliciesRequest

public struct ListMulticloudPoliciesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var isForceRefresh: Bool?
    public var subscriptionId: String?
    public var opcRequestId: String?
    public var limit: Int?
    public var page: String?
    public var displayName: String?
    public var sortBy: ListMulticloudPoliciesSortByEnum?
    public var sortOrder: ListMulticloudPoliciesSortOrderEnum?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, isForceRefresh, subscriptionId, opcRequestId, limit, page, displayName, sortBy, sortOrder
    }

    public init(
                compartmentId: String? = nil,
                isForceRefresh: Bool? = nil,
                subscriptionId: String? = nil,
                opcRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                displayName: String? = nil,
                sortBy: ListMulticloudPoliciesSortByEnum? = nil,
                sortOrder: ListMulticloudPoliciesSortOrderEnum? = nil
    ) {
        self.compartmentId = compartmentId
        self.isForceRefresh = isForceRefresh
        self.subscriptionId = subscriptionId
        self.opcRequestId = opcRequestId
        self.limit = limit
        self.page = page
        self.displayName = displayName
        self.sortBy = sortBy
        self.sortOrder = sortOrder
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListMulticloudPoliciesRequest: CustomStringConvertible {
    public var description: String { "ListMulticloudPoliciesRequest()" }
}

// MARK: - ListMulticloudPoliciesResponse

public struct ListMulticloudPoliciesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var multicloudPolicyCollection: MulticloudPolicyCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, multicloudPolicyCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                multicloudPolicyCollection: MulticloudPolicyCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.multicloudPolicyCollection = multicloudPolicyCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListMulticloudPoliciesResponse: CustomStringConvertible {
    public var description: String { "ListMulticloudPoliciesResponse()" }
}