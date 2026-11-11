import Foundation

// MARK: - ListCostAnomalyMonitorsRequest

public struct ListCostAnomalyMonitorsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListCostAnomalyMonitorsSortOrderEnum?
    public var sortBy: ListCostAnomalyMonitorsSortByEnum?
    public var lifecycleState: CostAnomalyMonitorLifecycleStateEnum?
    public var name: String?
    public var targetTenantId: [String]?
    public var region: [String]?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, limit, page, sortOrder, sortBy, lifecycleState, name, targetTenantId, region, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListCostAnomalyMonitorsSortOrderEnum? = nil,
                sortBy: ListCostAnomalyMonitorsSortByEnum? = nil,
                lifecycleState: CostAnomalyMonitorLifecycleStateEnum? = nil,
                name: String? = nil,
                targetTenantId: [String]? = nil,
                region: [String]? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.lifecycleState = lifecycleState
        self.name = name
        self.targetTenantId = targetTenantId
        self.region = region
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListCostAnomalyMonitorsRequest: CustomStringConvertible {
    public var description: String { "ListCostAnomalyMonitorsRequest()" }
}

// MARK: - ListCostAnomalyMonitorsResponse

public struct ListCostAnomalyMonitorsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var costAnomalyMonitorCollection: CostAnomalyMonitorCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, costAnomalyMonitorCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                costAnomalyMonitorCollection: CostAnomalyMonitorCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.costAnomalyMonitorCollection = costAnomalyMonitorCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListCostAnomalyMonitorsResponse: CustomStringConvertible {
    public var description: String { "ListCostAnomalyMonitorsResponse()" }
}