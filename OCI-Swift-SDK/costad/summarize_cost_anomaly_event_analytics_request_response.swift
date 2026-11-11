import Foundation

// MARK: - SummarizeCostAnomalyEventAnalyticsRequest

public struct SummarizeCostAnomalyEventAnalyticsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: SummarizeCostAnomalyEventAnalyticsSortOrderEnum?
    public var sortBy: SummarizeCostAnomalyEventAnalyticsSortByEnum?
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
                sortOrder: SummarizeCostAnomalyEventAnalyticsSortOrderEnum? = nil,
                sortBy: SummarizeCostAnomalyEventAnalyticsSortByEnum? = nil,
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

extension SummarizeCostAnomalyEventAnalyticsRequest: CustomStringConvertible {
    public var description: String { "SummarizeCostAnomalyEventAnalyticsRequest()" }
}

// MARK: - SummarizeCostAnomalyEventAnalyticsResponse

public struct SummarizeCostAnomalyEventAnalyticsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var costAnomalyEventAnalyticCollection: CostAnomalyEventAnalyticCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, costAnomalyEventAnalyticCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                costAnomalyEventAnalyticCollection: CostAnomalyEventAnalyticCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.costAnomalyEventAnalyticCollection = costAnomalyEventAnalyticCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SummarizeCostAnomalyEventAnalyticsResponse: CustomStringConvertible {
    public var description: String { "SummarizeCostAnomalyEventAnalyticsResponse()" }
}