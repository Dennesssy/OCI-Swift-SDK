import Foundation

// MARK: - ListCostAnomalyEventsRequest

public struct ListCostAnomalyEventsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListCostAnomalyEventsSortOrderEnum?
    public var sortBy: ListCostAnomalyEventsSortByEnum?
    public var name: String?
    public var costAnomalyMonitorId: String?
    public var targetTenantId: [String]?
    public var timeAnomalyEventStartDate: Date?
    public var timeAnomalyEventEndDate: Date?
    public var region: [String]?
    public var costImpact: Double?
    public var costImpactPercentage: Double?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, limit, page, sortOrder, sortBy, name, costAnomalyMonitorId, targetTenantId, timeAnomalyEventStartDate, timeAnomalyEventEndDate, region, costImpact, costImpactPercentage, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListCostAnomalyEventsSortOrderEnum? = nil,
                sortBy: ListCostAnomalyEventsSortByEnum? = nil,
                name: String? = nil,
                costAnomalyMonitorId: String? = nil,
                targetTenantId: [String]? = nil,
                timeAnomalyEventStartDate: Date? = nil,
                timeAnomalyEventEndDate: Date? = nil,
                region: [String]? = nil,
                costImpact: Double? = nil,
                costImpactPercentage: Double? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.name = name
        self.costAnomalyMonitorId = costAnomalyMonitorId
        self.targetTenantId = targetTenantId
        self.timeAnomalyEventStartDate = timeAnomalyEventStartDate
        self.timeAnomalyEventEndDate = timeAnomalyEventEndDate
        self.region = region
        self.costImpact = costImpact
        self.costImpactPercentage = costImpactPercentage
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListCostAnomalyEventsRequest: CustomStringConvertible {
    public var description: String { "ListCostAnomalyEventsRequest()" }
}

// MARK: - ListCostAnomalyEventsResponse

public struct ListCostAnomalyEventsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var costAnomalyEventCollection: CostAnomalyEventCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, costAnomalyEventCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                costAnomalyEventCollection: CostAnomalyEventCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.costAnomalyEventCollection = costAnomalyEventCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListCostAnomalyEventsResponse: CustomStringConvertible {
    public var description: String { "ListCostAnomalyEventsResponse()" }
}