import Foundation

// MARK: - BitbucketCloudFilterEventsEnum

public enum BitbucketCloudFilterEventsEnum: String, Codable, Sendable {
    case push = "PUSH"
    case pullRequestCreated = "PULL_REQUEST_CREATED"
    case pullRequestUpdated = "PULL_REQUEST_UPDATED"
    case pullRequestMerged = "PULL_REQUEST_MERGED"
}

public extension BitbucketCloudFilterEventsEnum {
    static var allValues: [BitbucketCloudFilterEventsEnum] { [.push, .pullRequestCreated, .pullRequestUpdated, .pullRequestMerged] }
    static var allStringValues: [String] { ["PUSH", "PULL_REQUEST_CREATED", "PULL_REQUEST_UPDATED", "PULL_REQUEST_MERGED"] }
    static func fromString(_ value: String) -> BitbucketCloudFilterEventsEnum? { BitbucketCloudFilterEventsEnum(rawValue: value) }
}