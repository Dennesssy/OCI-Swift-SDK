import Foundation

// MARK: - WorkRequestResourceActionTypeEnum

public enum WorkRequestResourceActionTypeEnum: String, Codable, Sendable {
    case created = "CREATED"
    case updated = "UPDATED"
    case deleted = "DELETED"
    case inProgress = "IN_PROGRESS"
    case failed = "FAILED"
}

public extension WorkRequestResourceActionTypeEnum {
    static var allValues: [WorkRequestResourceActionTypeEnum] { [.created, .updated, .deleted, .inProgress, .failed] }
    static var allStringValues: [String] { ["CREATED", "UPDATED", "DELETED", "IN_PROGRESS", "FAILED"] }
    static func fromString(_ value: String) -> WorkRequestResourceActionTypeEnum? { WorkRequestResourceActionTypeEnum(rawValue: value) }
}