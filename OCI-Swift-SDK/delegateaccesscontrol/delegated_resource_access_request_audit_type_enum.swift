import Foundation

// MARK: - DelegatedResourceAccessRequestAuditTypeEnum

public enum DelegatedResourceAccessRequestAuditTypeEnum: String, Codable, Sendable {
    case commandAudit = "COMMAND_AUDIT"
    case commandKeystrokeAudit = "COMMAND_KEYSTROKE_AUDIT"
}

public extension DelegatedResourceAccessRequestAuditTypeEnum {
    static var allValues: [DelegatedResourceAccessRequestAuditTypeEnum] { [.commandAudit, .commandKeystrokeAudit] }
    static var allStringValues: [String] { ["COMMAND_AUDIT", "COMMAND_KEYSTROKE_AUDIT"] }
    static func fromString(_ value: String) -> DelegatedResourceAccessRequestAuditTypeEnum? { DelegatedResourceAccessRequestAuditTypeEnum(rawValue: value) }
}