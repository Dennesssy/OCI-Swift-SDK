import Foundation

// MARK: - MergePullRequestDetailsActionTypeEnum

public enum MergePullRequestDetailsActionTypeEnum: String, Codable, Sendable {
    case execute = "EXECUTE"
    case validate = "VALIDATE"
}

public extension MergePullRequestDetailsActionTypeEnum {
    static var allValues: [MergePullRequestDetailsActionTypeEnum] { [.execute, .validate] }
    static var allStringValues: [String] { ["EXECUTE", "VALIDATE"] }
    static func fromString(_ value: String) -> MergePullRequestDetailsActionTypeEnum? { MergePullRequestDetailsActionTypeEnum(rawValue: value) }
}