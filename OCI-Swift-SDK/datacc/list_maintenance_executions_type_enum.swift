import Foundation

// MARK: - ListMaintenanceExecutionsTypeEnum

public enum ListMaintenanceExecutionsTypeEnum: String, Codable, Sendable {
    case notify = "NOTIFY"
    case execute = "EXECUTE"
}

public extension ListMaintenanceExecutionsTypeEnum {
    static var allValues: [ListMaintenanceExecutionsTypeEnum] { [.notify, .execute] }
    static var allStringValues: [String] { ["NOTIFY", "EXECUTE"] }
    static func fromString(_ value: String) -> ListMaintenanceExecutionsTypeEnum? { ListMaintenanceExecutionsTypeEnum(rawValue: value) }
}