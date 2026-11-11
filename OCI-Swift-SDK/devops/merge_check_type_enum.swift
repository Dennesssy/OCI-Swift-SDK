import Foundation

// MARK: - MergeCheckTypeEnum

public enum MergeCheckTypeEnum: String, Codable, Sendable {
    case conflict = "CONFLICT"
    case approvalRule = "APPROVAL_RULE"
    case build = "BUILD"
}

public extension MergeCheckTypeEnum {
    static var allValues: [MergeCheckTypeEnum] { [.conflict, .approvalRule, .build] }
    static var allStringValues: [String] { ["CONFLICT", "APPROVAL_RULE", "BUILD"] }
    static func fromString(_ value: String) -> MergeCheckTypeEnum? { MergeCheckTypeEnum(rawValue: value) }
}