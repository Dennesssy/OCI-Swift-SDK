import Foundation

// MARK: - ListTagDefaultsRequest

public struct ListTagDefaultsRequest: Codable, Sendable {
    public var page: String?
    public var limit: Int?
    public var id: String?
    public var compartmentId: String?
    public var tagDefinitionId: String?
    public var lifecycleState: TagDefaultSummaryLifecycleStateEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case page, limit, id, compartmentId, tagDefinitionId, lifecycleState, opcRequestId
    }

    public init(
                page: String? = nil,
                limit: Int? = nil,
                id: String? = nil,
                compartmentId: String? = nil,
                tagDefinitionId: String? = nil,
                lifecycleState: TagDefaultSummaryLifecycleStateEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.page = page
        self.limit = limit
        self.id = id
        self.compartmentId = compartmentId
        self.tagDefinitionId = tagDefinitionId
        self.lifecycleState = lifecycleState
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListTagDefaultsRequest: CustomStringConvertible {
    public var description: String { "ListTagDefaultsRequest()" }
}

// MARK: - ListTagDefaultsResponse

public struct ListTagDefaultsResponse: Codable, Sendable {
    public var items: [TagDefaultSummary]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [TagDefaultSummary]? = nil,
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

extension ListTagDefaultsResponse: CustomStringConvertible {
    public var description: String { "ListTagDefaultsResponse()" }
}