import Foundation

// MARK: - RepositoryTriggerBuildEventsEnum

public enum RepositoryTriggerBuildEventsEnum: String, Codable, Sendable {
    case push = "PUSH"
    case pullRequestCreated = "PULL_REQUEST_CREATED"
    case pullRequestUpdated = "PULL_REQUEST_UPDATED"
    case commitUpdates = "COMMIT_UPDATES"
}

public extension RepositoryTriggerBuildEventsEnum {
    static var allValues: [RepositoryTriggerBuildEventsEnum] { [.push, .pullRequestCreated, .pullRequestUpdated, .commitUpdates] }
    static var allStringValues: [String] { ["PUSH", "PULL_REQUEST_CREATED", "PULL_REQUEST_UPDATED", "COMMIT_UPDATES"] }
    static func fromString(_ value: String) -> RepositoryTriggerBuildEventsEnum? { RepositoryTriggerBuildEventsEnum(rawValue: value) }
}