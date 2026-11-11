import Foundation

// MARK: - ActionTypeEnum

public enum ActionTypeEnum: String, Codable, Sendable {
    case created = "CREATED"
    case updated = "UPDATED"
    case deleted = "DELETED"
    case inProgress = "IN_PROGRESS"
    case failed = "FAILED"
    case related = "RELATED"
    case canceledCreate = "CANCELED_CREATE"
    case canceledUpdate = "CANCELED_UPDATE"
    case canceledDelete = "CANCELED_DELETE"
}

public extension ActionTypeEnum {
    static var allValues: [ActionTypeEnum] { [.created, .updated, .deleted, .inProgress, .failed, .related, .canceledCreate, .canceledUpdate, .canceledDelete] }
    static var allStringValues: [String] { ["CREATED", "UPDATED", "DELETED", "IN_PROGRESS", "FAILED", "RELATED", "CANCELED_CREATE", "CANCELED_UPDATE", "CANCELED_DELETE"] }
    static func fromString(_ value: String) -> ActionTypeEnum? { ActionTypeEnum(rawValue: value) }
}