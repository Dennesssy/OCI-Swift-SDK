import Foundation

// MARK: - ListDeploymentsRequest

public struct ListDeploymentsRequest: Codable, Sendable {
    public var deployPipelineId: String?
    public var id: String?
    public var compartmentId: String?
    public var projectId: String?
    public var lifecycleState: DeploymentLifecycleStateEnum?
    public var displayName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListDeploymentsSortOrderEnum?
    public var sortBy: ListDeploymentsSortByEnum?
    public var opcRequestId: String?
    public var timeCreatedLessThan: Date?
    public var timeCreatedGreaterThanOrEqualTo: Date?

    private enum CodingKeys: String, CodingKey {
        case deployPipelineId, id, compartmentId, projectId, lifecycleState, displayName, limit, page, sortOrder, sortBy, opcRequestId, timeCreatedLessThan, timeCreatedGreaterThanOrEqualTo
    }

    public init(
                deployPipelineId: String? = nil,
                id: String? = nil,
                compartmentId: String? = nil,
                projectId: String? = nil,
                lifecycleState: DeploymentLifecycleStateEnum? = nil,
                displayName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListDeploymentsSortOrderEnum? = nil,
                sortBy: ListDeploymentsSortByEnum? = nil,
                opcRequestId: String? = nil,
                timeCreatedLessThan: Date? = nil,
                timeCreatedGreaterThanOrEqualTo: Date? = nil
    ) {
        self.deployPipelineId = deployPipelineId
        self.id = id
        self.compartmentId = compartmentId
        self.projectId = projectId
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.opcRequestId = opcRequestId
        self.timeCreatedLessThan = timeCreatedLessThan
        self.timeCreatedGreaterThanOrEqualTo = timeCreatedGreaterThanOrEqualTo
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDeploymentsRequest: CustomStringConvertible {
    public var description: String { "ListDeploymentsRequest()" }
}

// MARK: - ListDeploymentsResponse

public struct ListDeploymentsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var deploymentCollection: DeploymentCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, deploymentCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                deploymentCollection: DeploymentCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.deploymentCollection = deploymentCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDeploymentsResponse: CustomStringConvertible {
    public var description: String { "ListDeploymentsResponse()" }
}