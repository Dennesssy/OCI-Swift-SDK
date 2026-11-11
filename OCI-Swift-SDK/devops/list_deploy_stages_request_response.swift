import Foundation

// MARK: - ListDeployStagesRequest

public struct ListDeployStagesRequest: Codable, Sendable {
    public var id: String?
    public var deployPipelineId: String?
    public var compartmentId: String?
    public var lifecycleState: DeployStageLifecycleStateEnum?
    public var displayName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListDeployStagesSortOrderEnum?
    public var sortBy: ListDeployStagesSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case id, deployPipelineId, compartmentId, lifecycleState, displayName, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                id: String? = nil,
                deployPipelineId: String? = nil,
                compartmentId: String? = nil,
                lifecycleState: DeployStageLifecycleStateEnum? = nil,
                displayName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListDeployStagesSortOrderEnum? = nil,
                sortBy: ListDeployStagesSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.id = id
        self.deployPipelineId = deployPipelineId
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

extension ListDeployStagesRequest: CustomStringConvertible {
    public var description: String { "ListDeployStagesRequest()" }
}

// MARK: - ListDeployStagesResponse

public struct ListDeployStagesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var deployStageCollection: DeployStageCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, deployStageCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                deployStageCollection: DeployStageCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.deployStageCollection = deployStageCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDeployStagesResponse: CustomStringConvertible {
    public var description: String { "ListDeployStagesResponse()" }
}