import Foundation

// MARK: - ApprovalRuleMergeCheckLevelEnum

public enum ApprovalRuleMergeCheckLevelEnum: String, Codable, Sendable {
    case project = "PROJECT"
    case repository = "REPOSITORY"
}

public extension ApprovalRuleMergeCheckLevelEnum {
    static var allValues: [ApprovalRuleMergeCheckLevelEnum] { [.project, .repository] }
    static var allStringValues: [String] { ["PROJECT", "REPOSITORY"] }
    static func fromString(_ value: String) -> ApprovalRuleMergeCheckLevelEnum? { ApprovalRuleMergeCheckLevelEnum(rawValue: value) }
}