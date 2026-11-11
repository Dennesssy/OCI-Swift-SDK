import Foundation

// MARK: - ActionTypeEnum

public enum ActionTypeEnum: String, Codable, Sendable {
    case created = "CREATED"
    case updated = "UPDATED"
    case deleted = "DELETED"
    case inProgress = "IN_PROGRESS"
    case related = "RELATED"
    case failed = "FAILED"
}

public extension ActionTypeEnum {
    static var allValues: [ActionTypeEnum] { [.created, .updated, .deleted, .inProgress, .related, .failed] }
    static var allStringValues: [String] { ["CREATED", "UPDATED", "DELETED", "IN_PROGRESS", "RELATED", "FAILED"] }
    static func fromString(_ value: String) -> ActionTypeEnum? { ActionTypeEnum(rawValue: value) }
}