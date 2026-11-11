import Foundation

// MARK: - BitbucketServerFilterEventsEnum

public enum BitbucketServerFilterEventsEnum: String, Codable, Sendable {
    case push = "PUSH"
    case pullRequestOpened = "PULL_REQUEST_OPENED"
    case pullRequestModified = "PULL_REQUEST_MODIFIED"
    case pullRequestMerged = "PULL_REQUEST_MERGED"
}

public extension BitbucketServerFilterEventsEnum {
    static var allValues: [BitbucketServerFilterEventsEnum] { [.push, .pullRequestOpened, .pullRequestModified, .pullRequestMerged] }
    static var allStringValues: [String] { ["PUSH", "PULL_REQUEST_OPENED", "PULL_REQUEST_MODIFIED", "PULL_REQUEST_MERGED"] }
    static func fromString(_ value: String) -> BitbucketServerFilterEventsEnum? { BitbucketServerFilterEventsEnum(rawValue: value) }
}