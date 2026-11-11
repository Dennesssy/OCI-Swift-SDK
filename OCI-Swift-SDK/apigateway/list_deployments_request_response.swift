import Foundation

// MARK: - ListDeploymentsRequest

public struct ListDeploymentsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var gatewayId: String?
    public var displayName: String?
    public var lifecycleState: DeploymentLifecycleStateEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListDeploymentsSortOrderEnum?
    public var sortBy: ListDeploymentsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, gatewayId, displayName, lifecycleState, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                gatewayId: String? = nil,
                displayName: String? = nil,
                lifecycleState: DeploymentLifecycleStateEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListDeploymentsSortOrderEnum? = nil,
                sortBy: ListDeploymentsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.gatewayId = gatewayId
        self.displayName = displayName
        self.lifecycleState = lifecycleState
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

extension ListDeploymentsRequest: CustomStringConvertible {
    public var description: String { "ListDeploymentsRequest()" }
}

// MARK: - ListDeploymentsResponse

public struct ListDeploymentsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var opcPrevPage: String?
    public var deploymentCollection: DeploymentCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, opcPrevPage, deploymentCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                opcPrevPage: String? = nil,
                deploymentCollection: DeploymentCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.opcPrevPage = opcPrevPage
        self.deploymentCollection = deploymentCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDeploymentsResponse: CustomStringConvertible {
    public var description: String { "ListDeploymentsResponse()" }
}