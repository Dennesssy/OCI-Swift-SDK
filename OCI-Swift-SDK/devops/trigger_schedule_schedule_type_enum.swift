import Foundation

// MARK: - TriggerScheduleScheduleTypeEnum

public enum TriggerScheduleScheduleTypeEnum: String, Codable, Sendable {
    case none = "NONE"
    case `default` = "DEFAULT"
    case custom = "CUSTOM"
}

public extension TriggerScheduleScheduleTypeEnum {
    static var allValues: [TriggerScheduleScheduleTypeEnum] { [.none, .`default`, .custom] }
    static var allStringValues: [String] { ["NONE", "DEFAULT", "CUSTOM"] }
    static func fromString(_ value: String) -> TriggerScheduleScheduleTypeEnum? { TriggerScheduleScheduleTypeEnum(rawValue: value) }
}