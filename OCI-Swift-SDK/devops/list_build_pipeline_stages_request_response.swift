import Foundation

// MARK: - ListBuildPipelineStagesRequest

public struct ListBuildPipelineStagesRequest: Codable, Sendable {
    public var id: String?
    public var buildPipelineId: String?
    public var compartmentId: String?
    public var lifecycleState: BuildPipelineStageLifecycleStateEnum?
    public var displayName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListBuildPipelineStagesSortOrderEnum?
    public var sortBy: ListBuildPipelineStagesSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case id, buildPipelineId, compartmentId, lifecycleState, displayName, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                id: String? = nil,
                buildPipelineId: String? = nil,
                compartmentId: String? = nil,
                lifecycleState: BuildPipelineStageLifecycleStateEnum? = nil,
                displayName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListBuildPipelineStagesSortOrderEnum? = nil,
                sortBy: ListBuildPipelineStagesSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.id = id
        self.buildPipelineId = buildPipelineId
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

extension ListBuildPipelineStagesRequest: CustomStringConvertible {
    public var description: String { "ListBuildPipelineStagesRequest()" }
}

// MARK: - ListBuildPipelineStagesResponse

public struct ListBuildPipelineStagesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var buildPipelineStageCollection: BuildPipelineStageCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, buildPipelineStageCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                buildPipelineStageCollection: BuildPipelineStageCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.buildPipelineStageCollection = buildPipelineStageCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListBuildPipelineStagesResponse: CustomStringConvertible {
    public var description: String { "ListBuildPipelineStagesResponse()" }
}