import Foundation

// MARK: - IamWorkRequestResourceActionTypeEnum

public enum IamWorkRequestResourceActionTypeEnum: String, Codable, Sendable {
    case created = "CREATED"
    case updated = "UPDATED"
    case deleted = "DELETED"
    case related = "RELATED"
    case inProgress = "IN_PROGRESS"
}

public extension IamWorkRequestResourceActionTypeEnum {
    static var allValues: [IamWorkRequestResourceActionTypeEnum] { [.created, .updated, .deleted, .related, .inProgress] }
    static var allStringValues: [String] { ["CREATED", "UPDATED", "DELETED", "RELATED", "IN_PROGRESS"] }
    static func fromString(_ value: String) -> IamWorkRequestResourceActionTypeEnum? { IamWorkRequestResourceActionTypeEnum(rawValue: value) }
}