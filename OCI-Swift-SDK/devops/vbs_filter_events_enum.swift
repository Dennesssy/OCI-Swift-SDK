import Foundation

// MARK: - VbsFilterEventsEnum

public enum VbsFilterEventsEnum: String, Codable, Sendable {
    case push = "PUSH"
    case mergeRequestCreated = "MERGE_REQUEST_CREATED"
    case mergeRequestUpdated = "MERGE_REQUEST_UPDATED"
    case mergeRequestMerged = "MERGE_REQUEST_MERGED"
}

public extension VbsFilterEventsEnum {
    static var allValues: [VbsFilterEventsEnum] { [.push, .mergeRequestCreated, .mergeRequestUpdated, .mergeRequestMerged] }
    static var allStringValues: [String] { ["PUSH", "MERGE_REQUEST_CREATED", "MERGE_REQUEST_UPDATED", "MERGE_REQUEST_MERGED"] }
    static func fromString(_ value: String) -> VbsFilterEventsEnum? { VbsFilterEventsEnum(rawValue: value) }
}