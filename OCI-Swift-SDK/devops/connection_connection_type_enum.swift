import Foundation

// MARK: - ConnectionConnectionTypeEnum

public enum ConnectionConnectionTypeEnum: String, Codable, Sendable {
    case githubAccessToken = "GITHUB_ACCESS_TOKEN"
    case gitlabAccessToken = "GITLAB_ACCESS_TOKEN"
    case gitlabServerAccessToken = "GITLAB_SERVER_ACCESS_TOKEN"
    case bitbucketServerAccessToken = "BITBUCKET_SERVER_ACCESS_TOKEN"
    case bitbucketCloudAppPassword = "BITBUCKET_CLOUD_APP_PASSWORD"
    case vbsAccessToken = "VBS_ACCESS_TOKEN"
}

public extension ConnectionConnectionTypeEnum {
    static var allValues: [ConnectionConnectionTypeEnum] { [.githubAccessToken, .gitlabAccessToken, .gitlabServerAccessToken, .bitbucketServerAccessToken, .bitbucketCloudAppPassword, .vbsAccessToken] }
    static var allStringValues: [String] { ["GITHUB_ACCESS_TOKEN", "GITLAB_ACCESS_TOKEN", "GITLAB_SERVER_ACCESS_TOKEN", "BITBUCKET_SERVER_ACCESS_TOKEN", "BITBUCKET_CLOUD_APP_PASSWORD", "VBS_ACCESS_TOKEN"] }
    static func fromString(_ value: String) -> ConnectionConnectionTypeEnum? { ConnectionConnectionTypeEnum(rawValue: value) }
}