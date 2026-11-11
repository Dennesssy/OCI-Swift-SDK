import Foundation

// MARK: - ListKnowledgeBasesRequest

public struct ListKnowledgeBasesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: KnowledgeBaseLifecycleStateEnum?
    public var displayName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListKnowledgeBasesSortOrderEnum?
    public var sortBy: ListKnowledgeBasesSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, displayName, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: KnowledgeBaseLifecycleStateEnum? = nil,
                displayName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListKnowledgeBasesSortOrderEnum? = nil,
                sortBy: ListKnowledgeBasesSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.displayName = displayName
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

extension ListKnowledgeBasesRequest: CustomStringConvertible {
    public var description: String { "ListKnowledgeBasesRequest()" }
}

// MARK: - ListKnowledgeBasesResponse

public struct ListKnowledgeBasesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var knowledgeBaseCollection: KnowledgeBaseCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, knowledgeBaseCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                knowledgeBaseCollection: KnowledgeBaseCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.knowledgeBaseCollection = knowledgeBaseCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListKnowledgeBasesResponse: CustomStringConvertible {
    public var description: String { "ListKnowledgeBasesResponse()" }
}