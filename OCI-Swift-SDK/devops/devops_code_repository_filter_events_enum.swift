import Foundation

// MARK: - DevopsCodeRepositoryFilterEventsEnum

public enum DevopsCodeRepositoryFilterEventsEnum: String, Codable, Sendable {
    case push = "PUSH"
    case pullRequestCreated = "PULL_REQUEST_CREATED"
    case pullRequestUpdated = "PULL_REQUEST_UPDATED"
}

public extension DevopsCodeRepositoryFilterEventsEnum {
    static var allValues: [DevopsCodeRepositoryFilterEventsEnum] { [.push, .pullRequestCreated, .pullRequestUpdated] }
    static var allStringValues: [String] { ["PUSH", "PULL_REQUEST_CREATED", "PULL_REQUEST_UPDATED"] }
    static func fromString(_ value: String) -> DevopsCodeRepositoryFilterEventsEnum? { DevopsCodeRepositoryFilterEventsEnum(rawValue: value) }
}