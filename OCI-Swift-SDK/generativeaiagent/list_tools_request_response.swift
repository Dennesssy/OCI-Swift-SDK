import Foundation

// MARK: - ListToolsRequest

public struct ListToolsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: ToolLifecycleStateEnum?
    public var displayName: String?
    public var agentId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListToolsSortOrderEnum?
    public var sortBy: ListToolsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, displayName, agentId, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: ToolLifecycleStateEnum? = nil,
                displayName: String? = nil,
                agentId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListToolsSortOrderEnum? = nil,
                sortBy: ListToolsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.agentId = agentId
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

extension ListToolsRequest: CustomStringConvertible {
    public var description: String { "ListToolsRequest()" }
}

// MARK: - ListToolsResponse

public struct ListToolsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var toolCollection: ToolCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, toolCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                toolCollection: ToolCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.toolCollection = toolCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListToolsResponse: CustomStringConvertible {
    public var description: String { "ListToolsResponse()" }
}