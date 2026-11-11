import Foundation

// MARK: - ListDeployArtifactsRequest

public struct ListDeployArtifactsRequest: Codable, Sendable {
    public var id: String?
    public var projectId: String?
    public var compartmentId: String?
    public var lifecycleState: DeployArtifactLifecycleStateEnum?
    public var displayName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListDeployArtifactsSortOrderEnum?
    public var sortBy: ListDeployArtifactsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case id, projectId, compartmentId, lifecycleState, displayName, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                id: String? = nil,
                projectId: String? = nil,
                compartmentId: String? = nil,
                lifecycleState: DeployArtifactLifecycleStateEnum? = nil,
                displayName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListDeployArtifactsSortOrderEnum? = nil,
                sortBy: ListDeployArtifactsSortByEnum? = nil,
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

extension ListDeployArtifactsRequest: CustomStringConvertible {
    public var description: String { "ListDeployArtifactsRequest()" }
}

// MARK: - ListDeployArtifactsResponse

public struct ListDeployArtifactsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var deployArtifactCollection: DeployArtifactCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, deployArtifactCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                deployArtifactCollection: DeployArtifactCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.deployArtifactCollection = deployArtifactCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDeployArtifactsResponse: CustomStringConvertible {
    public var description: String { "ListDeployArtifactsResponse()" }
}