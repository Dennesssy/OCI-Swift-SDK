import Foundation

// MARK: - TriggerTriggerSourceEnum

public enum TriggerTriggerSourceEnum: String, Codable, Sendable {
    case github = "GITHUB"
    case gitlab = "GITLAB"
    case gitlabServer = "GITLAB_SERVER"
    case bitbucketCloud = "BITBUCKET_CLOUD"
    case bitbucketServer = "BITBUCKET_SERVER"
    case vbs = "VBS"
    case devopsCodeRepository = "DEVOPS_CODE_REPOSITORY"
}

public extension TriggerTriggerSourceEnum {
    static var allValues: [TriggerTriggerSourceEnum] { [.github, .gitlab, .gitlabServer, .bitbucketCloud, .bitbucketServer, .vbs, .devopsCodeRepository] }
    static var allStringValues: [String] { ["GITHUB", "GITLAB", "GITLAB_SERVER", "BITBUCKET_CLOUD", "BITBUCKET_SERVER", "VBS", "DEVOPS_CODE_REPOSITORY"] }
    static func fromString(_ value: String) -> TriggerTriggerSourceEnum? { TriggerTriggerSourceEnum(rawValue: value) }
}