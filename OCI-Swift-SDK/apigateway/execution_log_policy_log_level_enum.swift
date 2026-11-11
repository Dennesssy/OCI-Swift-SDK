import Foundation

// MARK: - ExecutionLogPolicyLogLevelEnum

public enum ExecutionLogPolicyLogLevelEnum: String, Codable, Sendable {
    case info = "INFO"
    case warn = "WARN"
    case error = "ERROR"
}

public extension ExecutionLogPolicyLogLevelEnum {
    static var allValues: [ExecutionLogPolicyLogLevelEnum] { [.info, .warn, .error] }
    static var allStringValues: [String] { ["INFO", "WARN", "ERROR"] }
    static func fromString(_ value: String) -> ExecutionLogPolicyLogLevelEnum? { ExecutionLogPolicyLogLevelEnum(rawValue: value) }
}