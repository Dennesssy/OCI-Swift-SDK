import Foundation

// MARK: - CompletionModeEnum

public enum CompletionModeEnum: String, Codable, Sendable {
    case waitForCompletion = "WAIT_FOR_COMPLETION"
    case backgroundJob = "BACKGROUND_JOB"
}

public extension CompletionModeEnum {
    static var allValues: [CompletionModeEnum] { [.waitForCompletion, .backgroundJob] }
    static var allStringValues: [String] { ["WAIT_FOR_COMPLETION", "BACKGROUND_JOB"] }
    static func fromString(_ value: String) -> CompletionModeEnum? { CompletionModeEnum(rawValue: value) }
}