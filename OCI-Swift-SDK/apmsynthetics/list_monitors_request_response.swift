import Foundation

// MARK: - ListMonitorsRequest

public struct ListMonitorsRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var displayName: String?
    public var scriptId: String?
    public var vantagePoint: String?
    public var monitorType: String?
    public var status: ListMonitorsStatusEnum?
    public var limit: Int?
    public var page: String?
    public var isMaintenanceWindowActive: Bool?
    public var isMaintenanceWindowSet: Bool?
    public var sortOrder: ListMonitorsSortOrderEnum?
    public var sortBy: ListMonitorsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, displayName, scriptId, vantagePoint, monitorType, status, limit, page, isMaintenanceWindowActive, isMaintenanceWindowSet, sortOrder, sortBy, opcRequestId
    }

    public init(
                apmDomainId: String? = nil,
                displayName: String? = nil,
                scriptId: String? = nil,
                vantagePoint: String? = nil,
                monitorType: String? = nil,
                status: ListMonitorsStatusEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                isMaintenanceWindowActive: Bool? = nil,
                isMaintenanceWindowSet: Bool? = nil,
                sortOrder: ListMonitorsSortOrderEnum? = nil,
                sortBy: ListMonitorsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.displayName = displayName
        self.scriptId = scriptId
        self.vantagePoint = vantagePoint
        self.monitorType = monitorType
        self.status = status
        self.limit = limit
        self.page = page
        self.isMaintenanceWindowActive = isMaintenanceWindowActive
        self.isMaintenanceWindowSet = isMaintenanceWindowSet
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListMonitorsRequest: CustomStringConvertible {
    public var description: String { "ListMonitorsRequest()" }
}

// MARK: - ListMonitorsResponse

public struct ListMonitorsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var monitorCollection: MonitorCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, monitorCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                monitorCollection: MonitorCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.monitorCollection = monitorCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListMonitorsResponse: CustomStringConvertible {
    public var description: String { "ListMonitorsResponse()" }
}