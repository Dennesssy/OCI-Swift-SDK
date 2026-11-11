import Foundation

// MARK: - ListSecurityAttributeNamespacesRequest

public struct ListSecurityAttributeNamespacesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var page: String?
    public var limit: Int?
    public var sortOrder: ListSecurityAttributeNamespacesSortOrderEnum?
    public var sortBy: ListSecurityAttributeNamespacesSortByEnum?
    public var name: String?
    public var opcRequestId: String?
    public var compartmentIdInSubtree: Bool?
    public var lifecycleState: SecurityAttributeNamespaceLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, page, limit, sortOrder, sortBy, name, opcRequestId, compartmentIdInSubtree, lifecycleState
    }

    public init(
                compartmentId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                sortOrder: ListSecurityAttributeNamespacesSortOrderEnum? = nil,
                sortBy: ListSecurityAttributeNamespacesSortByEnum? = nil,
                name: String? = nil,
                opcRequestId: String? = nil,
                compartmentIdInSubtree: Bool? = nil,
                lifecycleState: SecurityAttributeNamespaceLifecycleStateEnum? = nil
    ) {
        self.compartmentId = compartmentId
        self.page = page
        self.limit = limit
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.name = name
        self.opcRequestId = opcRequestId
        self.compartmentIdInSubtree = compartmentIdInSubtree
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListSecurityAttributeNamespacesRequest: CustomStringConvertible {
    public var description: String { "ListSecurityAttributeNamespacesRequest()" }
}

// MARK: - ListSecurityAttributeNamespacesResponse

public struct ListSecurityAttributeNamespacesResponse: Codable, Sendable {
    public var items: [SecurityAttributeNamespaceSummary]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [SecurityAttributeNamespaceSummary]? = nil,
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

extension ListSecurityAttributeNamespacesResponse: CustomStringConvertible {
    public var description: String { "ListSecurityAttributeNamespacesResponse()" }
}