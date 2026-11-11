import Foundation

// MARK: - ListDeployPipelinesRequest

public struct ListDeployPipelinesRequest: Codable, Sendable {
    public var id: String?
    public var projectId: String?
    public var compartmentId: String?
    public var lifecycleState: DeployPipelineLifecycleStateEnum?
    public var displayName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListDeployPipelinesSortOrderEnum?
    public var sortBy: ListDeployPipelinesSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case id, projectId, compartmentId, lifecycleState, displayName, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                id: String? = nil,
                projectId: String? = nil,
                compartmentId: String? = nil,
                lifecycleState: DeployPipelineLifecycleStateEnum? = nil,
                displayName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListDeployPipelinesSortOrderEnum? = nil,
                sortBy: ListDeployPipelinesSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.id = id
        self.projectId = projectId
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

extension ListDeployPipelinesRequest: CustomStringConvertible {
    public var description: String { "ListDeployPipelinesRequest()" }
}

// MARK: - ListDeployPipelinesResponse

public struct ListDeployPipelinesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var deployPipelineCollection: DeployPipelineCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, deployPipelineCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                deployPipelineCollection: DeployPipelineCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.deployPipelineCollection = deployPipelineCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDeployPipelinesResponse: CustomStringConvertible {
    public var description: String { "ListDeployPipelinesResponse()" }
}