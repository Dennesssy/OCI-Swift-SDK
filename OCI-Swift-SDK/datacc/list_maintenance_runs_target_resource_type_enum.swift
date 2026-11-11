import Foundation

// MARK: - ListMaintenanceRunsTargetResourceTypeEnum

public enum ListMaintenanceRunsTargetResourceTypeEnum: String, Codable, Sendable {
    case dbCcInfrastructure = "DB_CC_INFRASTRUCTURE"
}

public extension ListMaintenanceRunsTargetResourceTypeEnum {
    static var allValues: [ListMaintenanceRunsTargetResourceTypeEnum] { [.dbCcInfrastructure] }
    static var allStringValues: [String] { ["DB_CC_INFRASTRUCTURE"] }
    static func fromString(_ value: String) -> ListMaintenanceRunsTargetResourceTypeEnum? { ListMaintenanceRunsTargetResourceTypeEnum(rawValue: value) }
}