import Foundation

// MARK: - ListProjectsRequest

public struct ListProjectsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var id: String?
    public var lifecycleState: ProjectLifecycleStateEnum?
    public var name: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListProjectsSortOrderEnum?
    public var sortBy: ListProjectsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, id, lifecycleState, name, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                id: String? = nil,
                lifecycleState: ProjectLifecycleStateEnum? = nil,
                name: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListProjectsSortOrderEnum? = nil,
                sortBy: ListProjectsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.id = id
        self.lifecycleState = lifecycleState
        self.name = name
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

extension ListProjectsRequest: CustomStringConvertible {
    public var description: String { "ListProjectsRequest()" }
}

// MARK: - ListProjectsResponse

public struct ListProjectsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var projectCollection: ProjectCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, projectCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                projectCollection: ProjectCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.projectCollection = projectCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListProjectsResponse: CustomStringConvertible {
    public var description: String { "ListProjectsResponse()" }
}