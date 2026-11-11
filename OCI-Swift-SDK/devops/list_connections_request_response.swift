import Foundation

// MARK: - ListConnectionsRequest

public struct ListConnectionsRequest: Codable, Sendable {
    public var id: String?
    public var projectId: String?
    public var compartmentId: String?
    public var lifecycleState: ConnectionLifecycleStateEnum?
    public var displayName: String?
    public var connectionType: ConnectionConnectionTypeEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListConnectionsSortOrderEnum?
    public var sortBy: ListConnectionsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case id, projectId, compartmentId, lifecycleState, displayName, connectionType, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                id: String? = nil,
                projectId: String? = nil,
                compartmentId: String? = nil,
                lifecycleState: ConnectionLifecycleStateEnum? = nil,
                displayName: String? = nil,
                connectionType: ConnectionConnectionTypeEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListConnectionsSortOrderEnum? = nil,
                sortBy: ListConnectionsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.id = id
        self.projectId = projectId
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.connectionType = connectionType
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

extension ListConnectionsRequest: CustomStringConvertible {
    public var description: String { "ListConnectionsRequest()" }
}

// MARK: - ListConnectionsResponse

public struct ListConnectionsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var connectionCollection: ConnectionCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, connectionCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                connectionCollection: ConnectionCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.connectionCollection = connectionCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListConnectionsResponse: CustomStringConvertible {
    public var description: String { "ListConnectionsResponse()" }
}