import Foundation

// MARK: - MaintenanceSubtypeEnumEnum

public enum MaintenanceSubtypeEnumEnum: String, Codable, Sendable {
    case yearly = "YEARLY"
    case halfyearly = "HALFYEARLY"
    case quarterly = "QUARTERLY"
    case monthly = "MONTHLY"
    case daily = "DAILY"
    case hardware = "HARDWARE"
    case critical = "CRITICAL"
    case infraUpdate = "INFRA_UPDATE"
    case cpsServicesUpdate = "CPS_SERVICES_UPDATE"
    case cpsVmUpdate = "CPS_VM_UPDATE"
    case securityMonthly = "SECURITY_MONTHLY"
}

public extension MaintenanceSubtypeEnumEnum {
    static var allValues: [MaintenanceSubtypeEnumEnum] { [.yearly, .halfyearly, .quarterly, .monthly, .daily, .hardware, .critical, .infraUpdate, .cpsServicesUpdate, .cpsVmUpdate, .securityMonthly] }
    static var allStringValues: [String] { ["YEARLY", "HALFYEARLY", "QUARTERLY", "MONTHLY", "DAILY", "HARDWARE", "CRITICAL", "INFRA_UPDATE", "CPS_SERVICES_UPDATE", "CPS_VM_UPDATE", "SECURITY_MONTHLY"] }
    static func fromString(_ value: String) -> MaintenanceSubtypeEnumEnum? { MaintenanceSubtypeEnumEnum(rawValue: value) }
}