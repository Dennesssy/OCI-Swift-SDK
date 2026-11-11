import Foundation

// MARK: - ResourceAnalyticsInstanceEnableOacDetailsAttachmentTypeEnum

public enum ResourceAnalyticsInstanceEnableOacDetailsAttachmentTypeEnum: String, Codable, Sendable {
    case managed = "MANAGED"
}

public extension ResourceAnalyticsInstanceEnableOacDetailsAttachmentTypeEnum {
    static var allValues: [ResourceAnalyticsInstanceEnableOacDetailsAttachmentTypeEnum] { [.managed] }
    static var allStringValues: [String] { ["MANAGED"] }
    static func fromString(_ value: String) -> ResourceAnalyticsInstanceEnableOacDetailsAttachmentTypeEnum? { ResourceAnalyticsInstanceEnableOacDetailsAttachmentTypeEnum(rawValue: value) }
}