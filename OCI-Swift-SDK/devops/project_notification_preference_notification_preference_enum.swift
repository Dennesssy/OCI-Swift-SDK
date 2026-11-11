import Foundation

// MARK: - ProjectNotificationPreferenceNotificationPreferenceEnum

public enum ProjectNotificationPreferenceNotificationPreferenceEnum: String, Codable, Sendable {
    case watch = "WATCH"
    case ignore = "IGNORE"
    case mention = "MENTION"
}

public extension ProjectNotificationPreferenceNotificationPreferenceEnum {
    static var allValues: [ProjectNotificationPreferenceNotificationPreferenceEnum] { [.watch, .ignore, .mention] }
    static var allStringValues: [String] { ["WATCH", "IGNORE", "MENTION"] }
    static func fromString(_ value: String) -> ProjectNotificationPreferenceNotificationPreferenceEnum? { ProjectNotificationPreferenceNotificationPreferenceEnum(rawValue: value) }
}