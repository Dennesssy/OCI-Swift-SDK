import Foundation

// MARK: - ListSyncJobsRequest

public struct ListSyncJobsRequest: Codable, Sendable {
    public var objectStorageLinkId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListSyncJobsSortOrderEnum?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var lifecycleState: SyncJobLifecycleStateEnum?
    public var sortBy: ListSyncJobsSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case objectStorageLinkId, limit, page, sortOrder, ifMatch, opcRequestId, lifecycleState, sortBy
    }

    public init(
                objectStorageLinkId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListSyncJobsSortOrderEnum? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                lifecycleState: SyncJobLifecycleStateEnum? = nil,
                sortBy: ListSyncJobsSortByEnum? = nil
    ) {
        self.objectStorageLinkId = objectStorageLinkId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.lifecycleState = lifecycleState
        self.sortBy = sortBy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListSyncJobsRequest: CustomStringConvertible {
    public var description: String { "ListSyncJobsRequest()" }
}

// MARK: - ListSyncJobsResponse

public struct ListSyncJobsResponse: Codable, Sendable {
    public var opcNextPage: String?
    public var opcRequestId: String?
    public var syncJobCollection: SyncJobCollection?

    private enum CodingKeys: String, CodingKey {
        case opcNextPage, opcRequestId, syncJobCollection
    }

    public init(
                opcNextPage: String? = nil,
                opcRequestId: String? = nil,
                syncJobCollection: SyncJobCollection? = nil
    ) {
        self.opcNextPage = opcNextPage
        self.opcRequestId = opcRequestId
        self.syncJobCollection = syncJobCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListSyncJobsResponse: CustomStringConvertible {
    public var description: String { "ListSyncJobsResponse()" }
}