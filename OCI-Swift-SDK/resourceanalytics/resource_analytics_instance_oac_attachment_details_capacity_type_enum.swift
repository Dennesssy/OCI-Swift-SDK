import Foundation

// MARK: - ResourceAnalyticsInstanceOacAttachmentDetailsCapacityTypeEnum

public enum ResourceAnalyticsInstanceOacAttachmentDetailsCapacityTypeEnum: String, Codable, Sendable {
    case olpuCount = "OLPU_COUNT"
    case userCount = "USER_COUNT"
}

public extension ResourceAnalyticsInstanceOacAttachmentDetailsCapacityTypeEnum {
    static var allValues: [ResourceAnalyticsInstanceOacAttachmentDetailsCapacityTypeEnum] { [.olpuCount, .userCount] }
    static var allStringValues: [String] { ["OLPU_COUNT", "USER_COUNT"] }
    static func fromString(_ value: String) -> ResourceAnalyticsInstanceOacAttachmentDetailsCapacityTypeEnum? { ResourceAnalyticsInstanceOacAttachmentDetailsCapacityTypeEnum(rawValue: value) }
}