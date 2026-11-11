import Foundation

// MARK: - OperationTypeEnum

public enum OperationTypeEnum: String, Codable, Sendable {
    case createIotDomain = "CREATE_IOT_DOMAIN"
    case updateIotDomain = "UPDATE_IOT_DOMAIN"
    case deleteIotDomain = "DELETE_IOT_DOMAIN"
    case moveIotDomain = "MOVE_IOT_DOMAIN"
    case moveIotDomainGroup = "MOVE_IOT_DOMAIN_GROUP"
    case createIotDomainGroup = "CREATE_IOT_DOMAIN_GROUP"
    case updateIotDomainGroup = "UPDATE_IOT_DOMAIN_GROUP"
    case deleteIotDomainGroup = "DELETE_IOT_DOMAIN_GROUP"
    case configureDomainDataAccess = "CONFIGURE_DOMAIN_DATA_ACCESS"
    case configureDomainGroupDataAccess = "CONFIGURE_DOMAIN_GROUP_DATA_ACCESS"
    case changeIotDomainDataRetention = "CHANGE_IOT_DOMAIN_DATA_RETENTION"
    case createIotFlowRuntime = "CREATE_IOT_FLOW_RUNTIME"
    case updateIotFlowRuntime = "UPDATE_IOT_FLOW_RUNTIME"
    case deleteIotFlowRuntime = "DELETE_IOT_FLOW_RUNTIME"
    case moveIotFlowRuntime = "MOVE_IOT_FLOW_RUNTIME"
    case activateIotFlowRuntime = "ACTIVATE_IOT_FLOW_RUNTIME"
    case deactivateIotFlowRuntime = "DEACTIVATE_IOT_FLOW_RUNTIME"
}

public extension OperationTypeEnum {
    static var allValues: [OperationTypeEnum] { [.createIotDomain, .updateIotDomain, .deleteIotDomain, .moveIotDomain, .moveIotDomainGroup, .createIotDomainGroup, .updateIotDomainGroup, .deleteIotDomainGroup, .configureDomainDataAccess, .configureDomainGroupDataAccess, .changeIotDomainDataRetention, .createIotFlowRuntime, .updateIotFlowRuntime, .deleteIotFlowRuntime, .moveIotFlowRuntime, .activateIotFlowRuntime, .deactivateIotFlowRuntime] }
    static var allStringValues: [String] { ["CREATE_IOT_DOMAIN", "UPDATE_IOT_DOMAIN", "DELETE_IOT_DOMAIN", "MOVE_IOT_DOMAIN", "MOVE_IOT_DOMAIN_GROUP", "CREATE_IOT_DOMAIN_GROUP", "UPDATE_IOT_DOMAIN_GROUP", "DELETE_IOT_DOMAIN_GROUP", "CONFIGURE_DOMAIN_DATA_ACCESS", "CONFIGURE_DOMAIN_GROUP_DATA_ACCESS", "CHANGE_IOT_DOMAIN_DATA_RETENTION", "CREATE_IOT_FLOW_RUNTIME", "UPDATE_IOT_FLOW_RUNTIME", "DELETE_IOT_FLOW_RUNTIME", "MOVE_IOT_FLOW_RUNTIME", "ACTIVATE_IOT_FLOW_RUNTIME", "DEACTIVATE_IOT_FLOW_RUNTIME"] }
    static func fromString(_ value: String) -> OperationTypeEnum? { OperationTypeEnum(rawValue: value) }
}