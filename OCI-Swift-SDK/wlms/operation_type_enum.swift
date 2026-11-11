import Foundation

// MARK: - OperationTypeEnum

public enum OperationTypeEnum: String, Codable, Sendable {
    case startWlsdomain = "START_WLSDOMAIN"
    case stopWlsdomain = "STOP_WLSDOMAIN"
    case restartWlsdomain = "RESTART_WLSDOMAIN"
    case scanWlsdomain = "SCAN_WLSDOMAIN"
    case applyPatch = "APPLY_PATCH"
    case scanManagedInstance = "SCAN_MANAGED_INSTANCE"
    case restoreBackup = "RESTORE_BACKUP"
}

public extension OperationTypeEnum {
    static var allValues: [OperationTypeEnum] { [.startWlsdomain, .stopWlsdomain, .restartWlsdomain, .scanWlsdomain, .applyPatch, .scanManagedInstance, .restoreBackup] }
    static var allStringValues: [String] { ["START_WLSDOMAIN", "STOP_WLSDOMAIN", "RESTART_WLSDOMAIN", "SCAN_WLSDOMAIN", "APPLY_PATCH", "SCAN_MANAGED_INSTANCE", "RESTORE_BACKUP"] }
    static func fromString(_ value: String) -> OperationTypeEnum? { OperationTypeEnum(rawValue: value) }
}