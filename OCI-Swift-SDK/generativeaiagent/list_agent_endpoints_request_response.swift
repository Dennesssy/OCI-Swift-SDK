import Foundation

// MARK: - ListAgentEndpointsRequest

public struct ListAgentEndpointsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var agentId: String?
    public var lifecycleState: AgentEndpointLifecycleStateEnum?
    public var displayName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListAgentEndpointsSortOrderEnum?
    public var sortBy: ListAgentEndpointsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, agentId, lifecycleState, displayName, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                agentId: String? = nil,
                lifecycleState: AgentEndpointLifecycleStateEnum? = nil,
                displayName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListAgentEndpointsSortOrderEnum? = nil,
                sortBy: ListAgentEndpointsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.agentId = agentId
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

extension ListAgentEndpointsRequest: CustomStringConvertible {
    public var description: String { "ListAgentEndpointsRequest()" }
}

// MARK: - ListAgentEndpointsResponse

public struct ListAgentEndpointsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var agentEndpointCollection: AgentEndpointCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, agentEndpointCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                agentEndpointCollection: AgentEndpointCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.agentEndpointCollection = agentEndpointCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListAgentEndpointsResponse: CustomStringConvertible {
    public var description: String { "ListAgentEndpointsResponse()" }
}