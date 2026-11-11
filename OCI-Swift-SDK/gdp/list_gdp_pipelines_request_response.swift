import Foundation

// MARK: - ListGdpPipelinesRequest

public struct ListGdpPipelinesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var gdpPipelineId: String?
    public var lifecycleState: GdpPipelineLifecycleStateEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListGdpPipelinesSortOrderEnum?
    public var sortBy: ListGdpPipelinesSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, gdpPipelineId, lifecycleState, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                gdpPipelineId: String? = nil,
                lifecycleState: GdpPipelineLifecycleStateEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListGdpPipelinesSortOrderEnum? = nil,
                sortBy: ListGdpPipelinesSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.gdpPipelineId = gdpPipelineId
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

extension ListGdpPipelinesRequest: CustomStringConvertible {
    public var description: String { "ListGdpPipelinesRequest()" }
}

// MARK: - ListGdpPipelinesResponse

public struct ListGdpPipelinesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var gdpPipelineCollection: GdpPipelineCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, gdpPipelineCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                gdpPipelineCollection: GdpPipelineCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.gdpPipelineCollection = gdpPipelineCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListGdpPipelinesResponse: CustomStringConvertible {
    public var description: String { "ListGdpPipelinesResponse()" }
}