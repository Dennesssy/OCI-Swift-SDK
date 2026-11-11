import Foundation

// MARK: - ListAgentsRequest

public struct ListAgentsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: AgentLifecycleStateEnum?
    public var displayName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListAgentsSortOrderEnum?
    public var sortBy: ListAgentsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, displayName, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: AgentLifecycleStateEnum? = nil,
                displayName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListAgentsSortOrderEnum? = nil,
                sortBy: ListAgentsSortByEnum? = nil,
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

extension ListAgentsRequest: CustomStringConvertible {
    public var description: String { "ListAgentsRequest()" }
}

// MARK: - ListAgentsResponse

public struct ListAgentsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var agentCollection: AgentCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, agentCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                agentCollection: AgentCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.agentCollection = agentCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListAgentsResponse: CustomStringConvertible {
    public var description: String { "ListAgentsResponse()" }
}