import Foundation

// MARK: - ListInstancesRequest

public struct ListInstancesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: InstanceLifecycleStateEnum?
    public var displayName: String?
    public var id: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListInstancesSortOrderEnum?
    public var sortBy: ListInstancesSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, displayName, id, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: InstanceLifecycleStateEnum? = nil,
                displayName: String? = nil,
                id: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListInstancesSortOrderEnum? = nil,
                sortBy: ListInstancesSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.id = id
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

extension ListInstancesRequest: CustomStringConvertible {
    public var description: String { "ListInstancesRequest()" }
}

// MARK: - ListInstancesResponse

public struct ListInstancesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var instanceCollection: InstanceCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, instanceCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                instanceCollection: InstanceCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.instanceCollection = instanceCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListInstancesResponse: CustomStringConvertible {
    public var description: String { "ListInstancesResponse()" }
}