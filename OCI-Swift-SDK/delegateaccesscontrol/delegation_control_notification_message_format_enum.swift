import Foundation

// MARK: - DelegationControlNotificationMessageFormatEnum

public enum DelegationControlNotificationMessageFormatEnum: String, Codable, Sendable {
    case json = "JSON"
    case html = "HTML"
}

public extension DelegationControlNotificationMessageFormatEnum {
    static var allValues: [DelegationControlNotificationMessageFormatEnum] { [.json, .html] }
    static var allStringValues: [String] { ["JSON", "HTML"] }
    static func fromString(_ value: String) -> DelegationControlNotificationMessageFormatEnum? { DelegationControlNotificationMessageFormatEnum(rawValue: value) }
}