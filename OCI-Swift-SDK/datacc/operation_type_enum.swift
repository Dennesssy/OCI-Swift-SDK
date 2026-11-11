import Foundation

// MARK: - OperationTypeEnum

public enum OperationTypeEnum: String, Codable, Sendable {
    case createInstance = "CREATE_INSTANCE"
    case deleteInstance = "DELETE_INSTANCE"
    case updateInstance = "UPDATE_INSTANCE"
    case changeInstanceCompartment = "CHANGE_INSTANCE_COMPARTMENT"
    case createBaseVmClusterNetwork = "CREATE_BASE_VM_CLUSTER_NETWORK"
    case deleteBaseVmClusterNetwork = "DELETE_BASE_VM_CLUSTER_NETWORK"
    case validateBaseVmClusterNetwork = "VALIDATE_BASE_VM_CLUSTER_NETWORK"
    case updateBaseVmClusterNetwork = "UPDATE_BASE_VM_CLUSTER_NETWORK"
    case changeBaseVmClusterNetworkCompartment = "CHANGE_BASE_VM_CLUSTER_NETWORK_COMPARTMENT"
    case startBaseVm = "START_BASE_VM"
    case stopBaseVm = "STOP_BASE_VM"
    case startInstance = "START_INSTANCE"
    case stopInstance = "STOP_INSTANCE"
    case scaleInstance = "SCALE_INSTANCE"
    case restartInstance = "RESTART_INSTANCE"
    case restartBaseVm = "RESTART_BASE_VM"
    case migrateInstance = "MIGRATE_INSTANCE"
    case scaleBaseVm = "SCALE_BASE_VM"
    case updateSoftwareImage = "UPDATE_SOFTWARE_IMAGE"
    case changeSoftwareImageCompartment = "CHANGE_SOFTWARE_IMAGE_COMPARTMENT"
    case validateProxy = "VALIDATE_PROXY"
    case createBaseInfraCapacity = "CREATE_BASE_INFRA_CAPACITY"
    case updateBaseInfraCapacity = "UPDATE_BASE_INFRA_CAPACITY"
    case deleteBaseInfraCapacity = "DELETE_BASE_INFRA_CAPACITY"
    case activateBaseInfrastructure = "ACTIVATE_BASE_INFRASTRUCTURE"
    case createBaseInfrastructure = "CREATE_BASE_INFRASTRUCTURE"
    case deleteBaseInfrastructure = "DELETE_BASE_INFRASTRUCTURE"
    case updateBaseInfrastructure = "UPDATE_BASE_INFRASTRUCTURE"
    case updateBaseInfrastructureSoftware = "UPDATE_BASE_INFRASTRUCTURE_SOFTWARE"
    case validateBaseInfrastructure = "VALIDATE_BASE_INFRASTRUCTURE"
    case changeBaseInfrastructureCompartment = "CHANGE_BASE_INFRASTRUCTURE_COMPARTMENT"
    case analyzeInfrastructure = "ANALYZE_INFRASTRUCTURE"
    case analyzeBaseInfraNetwork = "ANALYZE_BASE_INFRA_NETWORK"
    case infrastructureSreValidation = "INFRASTRUCTURE_SRE_VALIDATION"
    case createMaintenanceRun = "CREATE_MAINTENANCE_RUN"
    case updateMaintenanceRun = "UPDATE_MAINTENANCE_RUN"
    case rescheduleMaintenanceRun = "RESCHEDULE_MAINTENANCE_RUN"
    case infrastructureScaleStorage = "INFRASTRUCTURE_SCALE_STORAGE"
}

public extension OperationTypeEnum {
    static var allValues: [OperationTypeEnum] { [.createInstance, .deleteInstance, .updateInstance, .changeInstanceCompartment, .createBaseVmClusterNetwork, .deleteBaseVmClusterNetwork, .validateBaseVmClusterNetwork, .updateBaseVmClusterNetwork, .changeBaseVmClusterNetworkCompartment, .startBaseVm, .stopBaseVm, .startInstance, .stopInstance, .scaleInstance, .restartInstance, .restartBaseVm, .migrateInstance, .scaleBaseVm, .updateSoftwareImage, .changeSoftwareImageCompartment, .validateProxy, .createBaseInfraCapacity, .updateBaseInfraCapacity, .deleteBaseInfraCapacity, .activateBaseInfrastructure, .createBaseInfrastructure, .deleteBaseInfrastructure, .updateBaseInfrastructure, .updateBaseInfrastructureSoftware, .validateBaseInfrastructure, .changeBaseInfrastructureCompartment, .analyzeInfrastructure, .analyzeBaseInfraNetwork, .infrastructureSreValidation, .createMaintenanceRun, .updateMaintenanceRun, .rescheduleMaintenanceRun, .infrastructureScaleStorage] }
    static var allStringValues: [String] { ["CREATE_INSTANCE", "DELETE_INSTANCE", "UPDATE_INSTANCE", "CHANGE_INSTANCE_COMPARTMENT", "CREATE_BASE_VM_CLUSTER_NETWORK", "DELETE_BASE_VM_CLUSTER_NETWORK", "VALIDATE_BASE_VM_CLUSTER_NETWORK", "UPDATE_BASE_VM_CLUSTER_NETWORK", "CHANGE_BASE_VM_CLUSTER_NETWORK_COMPARTMENT", "START_BASE_VM", "STOP_BASE_VM", "START_INSTANCE", "STOP_INSTANCE", "SCALE_INSTANCE", "RESTART_INSTANCE", "RESTART_BASE_VM", "MIGRATE_INSTANCE", "SCALE_BASE_VM", "UPDATE_SOFTWARE_IMAGE", "CHANGE_SOFTWARE_IMAGE_COMPARTMENT", "VALIDATE_PROXY", "CREATE_BASE_INFRA_CAPACITY", "UPDATE_BASE_INFRA_CAPACITY", "DELETE_BASE_INFRA_CAPACITY", "ACTIVATE_BASE_INFRASTRUCTURE", "CREATE_BASE_INFRASTRUCTURE", "DELETE_BASE_INFRASTRUCTURE", "UPDATE_BASE_INFRASTRUCTURE", "UPDATE_BASE_INFRASTRUCTURE_SOFTWARE", "VALIDATE_BASE_INFRASTRUCTURE", "CHANGE_BASE_INFRASTRUCTURE_COMPARTMENT", "ANALYZE_INFRASTRUCTURE", "ANALYZE_BASE_INFRA_NETWORK", "INFRASTRUCTURE_SRE_VALIDATION", "CREATE_MAINTENANCE_RUN", "UPDATE_MAINTENANCE_RUN", "RESCHEDULE_MAINTENANCE_RUN", "INFRASTRUCTURE_SCALE_STORAGE"] }
    static func fromString(_ value: String) -> OperationTypeEnum? { OperationTypeEnum(rawValue: value) }
}