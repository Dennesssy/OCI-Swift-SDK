import Foundation

// MARK: - BuildRunSourceSourceTypeEnum

public enum BuildRunSourceSourceTypeEnum: String, Codable, Sendable {
    case manual = "MANUAL"
    case github = "GITHUB"
    case gitlab = "GITLAB"
    case gitlabServer = "GITLAB_SERVER"
    case bitbucketCloud = "BITBUCKET_CLOUD"
    case bitbucketServer = "BITBUCKET_SERVER"
    case devopsCodeRepository = "DEVOPS_CODE_REPOSITORY"
    case vbs = "VBS"
}

public extension BuildRunSourceSourceTypeEnum {
    static var allValues: [BuildRunSourceSourceTypeEnum] { [.manual, .github, .gitlab, .gitlabServer, .bitbucketCloud, .bitbucketServer, .devopsCodeRepository, .vbs] }
    static var allStringValues: [String] { ["MANUAL", "GITHUB", "GITLAB", "GITLAB_SERVER", "BITBUCKET_CLOUD", "BITBUCKET_SERVER", "DEVOPS_CODE_REPOSITORY", "VBS"] }
    static func fromString(_ value: String) -> BuildRunSourceSourceTypeEnum? { BuildRunSourceSourceTypeEnum(rawValue: value) }
}