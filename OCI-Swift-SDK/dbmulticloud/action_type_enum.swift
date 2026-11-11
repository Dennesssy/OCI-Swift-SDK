import Foundation

// MARK: - ActionTypeEnum

public enum ActionTypeEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case created = "CREATED"
    case updated = "UPDATED"
    case deleted = "DELETED"
    case inProgress = "IN_PROGRESS"
    case failed = "FAILED"
}

public extension ActionTypeEnum {
    static var allValues: [ActionTypeEnum] { [.creating, .created, .updated, .deleted, .inProgress, .failed] }
    static var allStringValues: [String] { ["CREATING", "CREATED", "UPDATED", "DELETED", "IN_PROGRESS", "FAILED"] }
    static func fromString(_ value: String) -> ActionTypeEnum? { ActionTypeEnum(rawValue: value) }
}