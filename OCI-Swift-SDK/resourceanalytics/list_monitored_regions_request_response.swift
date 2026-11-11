import Foundation

// MARK: - ListMonitoredRegionsRequest

public struct ListMonitoredRegionsRequest: Codable, Sendable {
    public var resourceAnalyticsInstanceId: String?
    public var lifecycleState: MonitoredRegionLifecycleStateEnum?
    public var id: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListMonitoredRegionsSortOrderEnum?
    public var sortBy: ListMonitoredRegionsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case resourceAnalyticsInstanceId, lifecycleState, id, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                resourceAnalyticsInstanceId: String? = nil,
                lifecycleState: MonitoredRegionLifecycleStateEnum? = nil,
                id: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListMonitoredRegionsSortOrderEnum? = nil,
                sortBy: ListMonitoredRegionsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.resourceAnalyticsInstanceId = resourceAnalyticsInstanceId
        self.lifecycleState = lifecycleState
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

extension ListMonitoredRegionsRequest: CustomStringConvertible {
    public var description: String { "ListMonitoredRegionsRequest()" }
}

// MARK: - ListMonitoredRegionsResponse

public struct ListMonitoredRegionsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var monitoredRegionCollection: MonitoredRegionCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, monitoredRegionCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                monitoredRegionCollection: MonitoredRegionCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.monitoredRegionCollection = monitoredRegionCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListMonitoredRegionsResponse: CustomStringConvertible {
    public var description: String { "ListMonitoredRegionsResponse()" }
}