import Foundation

// MARK: - ListMaintenanceExecutionsTargetResourceTypeEnum

public enum ListMaintenanceExecutionsTargetResourceTypeEnum: String, Codable, Sendable {
    case dbCcInfrastructure = "DB_CC_INFRASTRUCTURE"
}

public extension ListMaintenanceExecutionsTargetResourceTypeEnum {
    static var allValues: [ListMaintenanceExecutionsTargetResourceTypeEnum] { [.dbCcInfrastructure] }
    static var allStringValues: [String] { ["DB_CC_INFRASTRUCTURE"] }
    static func fromString(_ value: String) -> ListMaintenanceExecutionsTargetResourceTypeEnum? { ListMaintenanceExecutionsTargetResourceTypeEnum(rawValue: value) }
}