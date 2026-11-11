import Foundation

// MARK: - CreateOrUpdateGitRefDetailsRefTypeEnum

public enum CreateOrUpdateGitRefDetailsRefTypeEnum: String, Codable, Sendable {
    case branch = "BRANCH"
    case tag = "TAG"
}

public extension CreateOrUpdateGitRefDetailsRefTypeEnum {
    static var allValues: [CreateOrUpdateGitRefDetailsRefTypeEnum] { [.branch, .tag] }
    static var allStringValues: [String] { ["BRANCH", "TAG"] }
    static func fromString(_ value: String) -> CreateOrUpdateGitRefDetailsRefTypeEnum? { CreateOrUpdateGitRefDetailsRefTypeEnum(rawValue: value) }
}