import Foundation

// MARK: - GithubFilterEventsEnum

public enum GithubFilterEventsEnum: String, Codable, Sendable {
    case push = "PUSH"
    case pullRequestCreated = "PULL_REQUEST_CREATED"
    case pullRequestUpdated = "PULL_REQUEST_UPDATED"
    case pullRequestReopened = "PULL_REQUEST_REOPENED"
    case pullRequestMerged = "PULL_REQUEST_MERGED"
}

public extension GithubFilterEventsEnum {
    static var allValues: [GithubFilterEventsEnum] { [.push, .pullRequestCreated, .pullRequestUpdated, .pullRequestReopened, .pullRequestMerged] }
    static var allStringValues: [String] { ["PUSH", "PULL_REQUEST_CREATED", "PULL_REQUEST_UPDATED", "PULL_REQUEST_REOPENED", "PULL_REQUEST_MERGED"] }
    static func fromString(_ value: String) -> GithubFilterEventsEnum? { GithubFilterEventsEnum(rawValue: value) }
}