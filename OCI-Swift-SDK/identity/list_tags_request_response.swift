import Foundation

// MARK: - ListTagsRequest

public struct ListTagsRequest: Codable, Sendable {
    public var tagNamespaceId: String?
    public var page: String?
    public var limit: Int?
    public var lifecycleState: TagLifecycleStateEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case tagNamespaceId, page, limit, lifecycleState, opcRequestId
    }

    public init(
                tagNamespaceId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                lifecycleState: TagLifecycleStateEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.tagNamespaceId = tagNamespaceId
        self.page = page
        self.limit = limit
        self.lifecycleState = lifecycleState
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListTagsRequest: CustomStringConvertible {
    public var description: String { "ListTagsRequest()" }
}

// MARK: - ListTagsResponse

public struct ListTagsResponse: Codable, Sendable {
    public var items: [TagSummary]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [TagSummary]? = nil,
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

extension ListTagsResponse: CustomStringConvertible {
    public var description: String { "ListTagsResponse()" }
}