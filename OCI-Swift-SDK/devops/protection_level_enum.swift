import Foundation

// MARK: - ProtectionLevelEnum

public enum ProtectionLevelEnum: String, Codable, Sendable {
    case readOnly = "READ_ONLY"
    case pullRequestMergeOnly = "PULL_REQUEST_MERGE_ONLY"
}

public extension ProtectionLevelEnum {
    static var allValues: [ProtectionLevelEnum] { [.readOnly, .pullRequestMergeOnly] }
    static var allStringValues: [String] { ["READ_ONLY", "PULL_REQUEST_MERGE_ONLY"] }
    static func fromString(_ value: String) -> ProtectionLevelEnum? { ProtectionLevelEnum(rawValue: value) }
}