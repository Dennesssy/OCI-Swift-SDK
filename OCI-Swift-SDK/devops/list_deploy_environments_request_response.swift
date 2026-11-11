import Foundation

// MARK: - ListDeployEnvironmentsRequest

public struct ListDeployEnvironmentsRequest: Codable, Sendable {
    public var projectId: String?
    public var compartmentId: String?
    public var id: String?
    public var lifecycleState: DeployEnvironmentLifecycleStateEnum?
    public var displayName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListDeployEnvironmentsSortOrderEnum?
    public var sortBy: ListDeployEnvironmentsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case projectId, compartmentId, id, lifecycleState, displayName, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                projectId: String? = nil,
                compartmentId: String? = nil,
                id: String? = nil,
                lifecycleState: DeployEnvironmentLifecycleStateEnum? = nil,
                displayName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListDeployEnvironmentsSortOrderEnum? = nil,
                sortBy: ListDeployEnvironmentsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.projectId = projectId
        self.compartmentId = compartmentId
        self.id = id
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

extension ListDeployEnvironmentsRequest: CustomStringConvertible {
    public var description: String { "ListDeployEnvironmentsRequest()" }
}

// MARK: - ListDeployEnvironmentsResponse

public struct ListDeployEnvironmentsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var deployEnvironmentCollection: DeployEnvironmentCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, deployEnvironmentCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                deployEnvironmentCollection: DeployEnvironmentCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.deployEnvironmentCollection = deployEnvironmentCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDeployEnvironmentsResponse: CustomStringConvertible {
    public var description: String { "ListDeployEnvironmentsResponse()" }
}