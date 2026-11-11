import Foundation

// MARK: - OperationTypeEnum

public enum OperationTypeEnum: String, Codable, Sendable {
    case createResourceAnalyticsInstance = "CREATE_RESOURCE_ANALYTICS_INSTANCE"
    case updateResourceAnalyticsInstance = "UPDATE_RESOURCE_ANALYTICS_INSTANCE"
    case deleteResourceAnalyticsInstance = "DELETE_RESOURCE_ANALYTICS_INSTANCE"
    case moveResourceAnalyticsInstance = "MOVE_RESOURCE_ANALYTICS_INSTANCE"
    case createTenancyAttachment = "CREATE_TENANCY_ATTACHMENT"
    case updateTenancyAttachment = "UPDATE_TENANCY_ATTACHMENT"
    case deleteTenancyAttachment = "DELETE_TENANCY_ATTACHMENT"
    case createMonitoredRegion = "CREATE_MONITORED_REGION"
    case deleteMonitoredRegion = "DELETE_MONITORED_REGION"
    case enableOac = "ENABLE_OAC"
    case disableOac = "DISABLE_OAC"
}

public extension OperationTypeEnum {
    static var allValues: [OperationTypeEnum] { [.createResourceAnalyticsInstance, .updateResourceAnalyticsInstance, .deleteResourceAnalyticsInstance, .moveResourceAnalyticsInstance, .createTenancyAttachment, .updateTenancyAttachment, .deleteTenancyAttachment, .createMonitoredRegion, .deleteMonitoredRegion, .enableOac, .disableOac] }
    static var allStringValues: [String] { ["CREATE_RESOURCE_ANALYTICS_INSTANCE", "UPDATE_RESOURCE_ANALYTICS_INSTANCE", "DELETE_RESOURCE_ANALYTICS_INSTANCE", "MOVE_RESOURCE_ANALYTICS_INSTANCE", "CREATE_TENANCY_ATTACHMENT", "UPDATE_TENANCY_ATTACHMENT", "DELETE_TENANCY_ATTACHMENT", "CREATE_MONITORED_REGION", "DELETE_MONITORED_REGION", "ENABLE_OAC", "DISABLE_OAC"] }
    static func fromString(_ value: String) -> OperationTypeEnum? { OperationTypeEnum(rawValue: value) }
}