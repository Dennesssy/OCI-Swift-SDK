import Foundation

// MARK: - ListTagNamespacesRequest

public struct ListTagNamespacesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var page: String?
    public var limit: Int?
    public var includeSubcompartments: Bool?
    public var lifecycleState: TagNamespaceLifecycleStateEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, page, limit, includeSubcompartments, lifecycleState, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                includeSubcompartments: Bool? = nil,
                lifecycleState: TagNamespaceLifecycleStateEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.page = page
        self.limit = limit
        self.includeSubcompartments = includeSubcompartments
        self.lifecycleState = lifecycleState
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListTagNamespacesRequest: CustomStringConvertible {
    public var description: String { "ListTagNamespacesRequest()" }
}

// MARK: - ListTagNamespacesResponse

public struct ListTagNamespacesResponse: Codable, Sendable {
    public var items: [TagNamespaceSummary]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [TagNamespaceSummary]? = nil,
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

extension ListTagNamespacesResponse: CustomStringConvertible {
    public var description: String { "ListTagNamespacesResponse()" }
}