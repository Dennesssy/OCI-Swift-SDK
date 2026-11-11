import Foundation

// MARK: - BuildSourceConnectionTypeEnum

public enum BuildSourceConnectionTypeEnum: String, Codable, Sendable {
    case github = "GITHUB"
    case gitlab = "GITLAB"
    case gitlabServer = "GITLAB_SERVER"
    case bitbucketCloud = "BITBUCKET_CLOUD"
    case bitbucketServer = "BITBUCKET_SERVER"
    case devopsCodeRepository = "DEVOPS_CODE_REPOSITORY"
    case vbs = "VBS"
}

public extension BuildSourceConnectionTypeEnum {
    static var allValues: [BuildSourceConnectionTypeEnum] { [.github, .gitlab, .gitlabServer, .bitbucketCloud, .bitbucketServer, .devopsCodeRepository, .vbs] }
    static var allStringValues: [String] { ["GITHUB", "GITLAB", "GITLAB_SERVER", "BITBUCKET_CLOUD", "BITBUCKET_SERVER", "DEVOPS_CODE_REPOSITORY", "VBS"] }
    static func fromString(_ value: String) -> BuildSourceConnectionTypeEnum? { BuildSourceConnectionTypeEnum(rawValue: value) }
}