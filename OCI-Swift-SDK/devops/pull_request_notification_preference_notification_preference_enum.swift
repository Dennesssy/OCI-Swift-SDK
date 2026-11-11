import Foundation

// MARK: - PullRequestNotificationPreferenceNotificationPreferenceEnum

public enum PullRequestNotificationPreferenceNotificationPreferenceEnum: String, Codable, Sendable {
    case watch = "WATCH"
    case ignore = "IGNORE"
    case mention = "MENTION"
}

public extension PullRequestNotificationPreferenceNotificationPreferenceEnum {
    static var allValues: [PullRequestNotificationPreferenceNotificationPreferenceEnum] { [.watch, .ignore, .mention] }
    static var allStringValues: [String] { ["WATCH", "IGNORE", "MENTION"] }
    static func fromString(_ value: String) -> PullRequestNotificationPreferenceNotificationPreferenceEnum? { PullRequestNotificationPreferenceNotificationPreferenceEnum(rawValue: value) }
}