import Foundation

// MARK: - ListBuildPipelinesRequest

public struct ListBuildPipelinesRequest: Codable, Sendable {
    public var id: String?
    public var projectId: String?
    public var compartmentId: String?
    public var lifecycleState: BuildPipelineLifecycleStateEnum?
    public var displayName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListBuildPipelinesSortOrderEnum?
    public var sortBy: ListBuildPipelinesSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case id, projectId, compartmentId, lifecycleState, displayName, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                id: String? = nil,
                projectId: String? = nil,
                compartmentId: String? = nil,
                lifecycleState: BuildPipelineLifecycleStateEnum? = nil,
                displayName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListBuildPipelinesSortOrderEnum? = nil,
                sortBy: ListBuildPipelinesSortByEnum? = nil,
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

extension ListBuildPipelinesRequest: CustomStringConvertible {
    public var description: String { "ListBuildPipelinesRequest()" }
}

// MARK: - ListBuildPipelinesResponse

public struct ListBuildPipelinesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var buildPipelineCollection: BuildPipelineCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, buildPipelineCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                buildPipelineCollection: BuildPipelineCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.buildPipelineCollection = buildPipelineCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListBuildPipelinesResponse: CustomStringConvertible {
    public var description: String { "ListBuildPipelinesResponse()" }
}