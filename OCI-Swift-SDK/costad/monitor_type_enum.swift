import Foundation

// MARK: - MonitorTypeEnum

public enum MonitorTypeEnum: String, Codable, Sendable {
    case `default` = "DEFAULT"
    case custom = "CUSTOM"
}

public extension MonitorTypeEnum {
    static var allValues: [MonitorTypeEnum] { [.`default`, .custom] }
    static var allStringValues: [String] { ["DEFAULT", "CUSTOM"] }
    static func fromString(_ value: String) -> MonitorTypeEnum? { MonitorTypeEnum(rawValue: value) }
}