import Foundation

// MARK: - RepositoryNotificationPreferenceNotificationPreferenceEnum

public enum RepositoryNotificationPreferenceNotificationPreferenceEnum: String, Codable, Sendable {
    case watch = "WATCH"
    case ignore = "IGNORE"
    case mention = "MENTION"
    case inherited = "INHERITED"
}

public extension RepositoryNotificationPreferenceNotificationPreferenceEnum {
    static var allValues: [RepositoryNotificationPreferenceNotificationPreferenceEnum] { [.watch, .ignore, .mention, .inherited] }
    static var allStringValues: [String] { ["WATCH", "IGNORE", "MENTION", "INHERITED"] }
    static func fromString(_ value: String) -> RepositoryNotificationPreferenceNotificationPreferenceEnum? { RepositoryNotificationPreferenceNotificationPreferenceEnum(rawValue: value) }
}