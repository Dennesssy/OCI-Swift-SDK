import Foundation

// MARK: - ListBuildRunsRequest

public struct ListBuildRunsRequest: Codable, Sendable {
    public var id: String?
    public var buildPipelineId: String?
    public var projectId: String?
    public var compartmentId: String?
    public var displayName: String?
    public var lifecycleState: BuildRunLifecycleStateEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListBuildRunsSortOrderEnum?
    public var sortBy: ListBuildRunsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case id, buildPipelineId, projectId, compartmentId, displayName, lifecycleState, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                id: String? = nil,
                buildPipelineId: String? = nil,
                projectId: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                lifecycleState: BuildRunLifecycleStateEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListBuildRunsSortOrderEnum? = nil,
                sortBy: ListBuildRunsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.id = id
        self.buildPipelineId = buildPipelineId
        self.projectId = projectId
        self.compartmentId = compartmentId
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

extension ListBuildRunsRequest: CustomStringConvertible {
    public var description: String { "ListBuildRunsRequest()" }
}

// MARK: - ListBuildRunsResponse

public struct ListBuildRunsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var buildRunSummaryCollection: BuildRunSummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, buildRunSummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                buildRunSummaryCollection: BuildRunSummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.buildRunSummaryCollection = buildRunSummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListBuildRunsResponse: CustomStringConvertible {
    public var description: String { "ListBuildRunsResponse()" }
}