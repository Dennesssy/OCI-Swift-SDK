import Foundation

// MARK: - PullRequestLifecycleDetailsEnum

public enum PullRequestLifecycleDetailsEnum: String, Codable, Sendable {
    case `open` = "OPEN"
    case conflict = "CONFLICT"
    case closed = "CLOSED"
    case merging = "MERGING"
    case merged = "MERGED"
}

public extension PullRequestLifecycleDetailsEnum {
    static var allValues: [PullRequestLifecycleDetailsEnum] { [.`open`, .conflict, .closed, .merging, .merged] }
    static var allStringValues: [String] { ["OPEN", "CONFLICT", "CLOSED", "MERGING", "MERGED"] }
    static func fromString(_ value: String) -> PullRequestLifecycleDetailsEnum? { PullRequestLifecycleDetailsEnum(rawValue: value) }
}