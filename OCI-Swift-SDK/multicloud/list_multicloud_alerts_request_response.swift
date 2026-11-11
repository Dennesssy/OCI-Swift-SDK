import Foundation

// MARK: - ListMulticloudAlertsRequest

public struct ListMulticloudAlertsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var resourceId: String?
    public var resourceType: String?
    public var alertType: String?
    public var alertFunctionName: String?
    public var severity: ListMulticloudAlertsSeverityEnum?
    public var alertStatus: ListMulticloudAlertsAlertStatusEnum?
    public var subscriptionServiceName: ListMulticloudAlertsSubscriptionServiceNameEnum?
    public var subscriptionId: String?
    public var opcRequestId: String?
    public var limit: Int?
    public var page: String?
    public var displayName: String?
    public var sortBy: ListMulticloudAlertsSortByEnum?
    public var sortOrder: ListMulticloudAlertsSortOrderEnum?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, resourceId, resourceType, alertType, alertFunctionName, severity, alertStatus, subscriptionServiceName, subscriptionId, opcRequestId, limit, page, displayName, sortBy, sortOrder
    }

    public init(
                compartmentId: String? = nil,
                resourceId: String? = nil,
                resourceType: String? = nil,
                alertType: String? = nil,
                alertFunctionName: String? = nil,
                severity: ListMulticloudAlertsSeverityEnum? = nil,
                alertStatus: ListMulticloudAlertsAlertStatusEnum? = nil,
                subscriptionServiceName: ListMulticloudAlertsSubscriptionServiceNameEnum? = nil,
                subscriptionId: String? = nil,
                opcRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                displayName: String? = nil,
                sortBy: ListMulticloudAlertsSortByEnum? = nil,
                sortOrder: ListMulticloudAlertsSortOrderEnum? = nil
    ) {
        self.compartmentId = compartmentId
        self.resourceId = resourceId
        self.resourceType = resourceType
        self.alertType = alertType
        self.alertFunctionName = alertFunctionName
        self.severity = severity
        self.alertStatus = alertStatus
        self.subscriptionServiceName = subscriptionServiceName
        self.subscriptionId = subscriptionId
        self.opcRequestId = opcRequestId
        self.limit = limit
        self.page = page
        self.displayName = displayName
        self.sortBy = sortBy
        self.sortOrder = sortOrder
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListMulticloudAlertsRequest: CustomStringConvertible {
    public var description: String { "ListMulticloudAlertsRequest()" }
}

// MARK: - ListMulticloudAlertsResponse

public struct ListMulticloudAlertsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var multicloudAlertCollection: MulticloudAlertCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, multicloudAlertCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                multicloudAlertCollection: MulticloudAlertCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.multicloudAlertCollection = multicloudAlertCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListMulticloudAlertsResponse: CustomStringConvertible {
    public var description: String { "ListMulticloudAlertsResponse()" }
}