import Foundation

// MARK: - DelegatedResourceAccessRequestApprovalDetailsApprovalTypeEnum

public enum DelegatedResourceAccessRequestApprovalDetailsApprovalTypeEnum: String, Codable, Sendable {
    case initial = "INITIAL"
    case `extension` = "EXTENSION"
}

public extension DelegatedResourceAccessRequestApprovalDetailsApprovalTypeEnum {
    static var allValues: [DelegatedResourceAccessRequestApprovalDetailsApprovalTypeEnum] { [.initial, .`extension`] }
    static var allStringValues: [String] { ["INITIAL", "EXTENSION"] }
    static func fromString(_ value: String) -> DelegatedResourceAccessRequestApprovalDetailsApprovalTypeEnum? { DelegatedResourceAccessRequestApprovalDetailsApprovalTypeEnum(rawValue: value) }
}