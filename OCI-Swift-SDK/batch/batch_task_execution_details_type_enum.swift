import Foundation

// MARK: - BatchTaskExecutionDetailsTypeEnum

public enum BatchTaskExecutionDetailsTypeEnum: String, Codable, Sendable {
    case computeTaskExecutionDetails = "COMPUTE_TASK_EXECUTION_DETAILS"
}

public extension BatchTaskExecutionDetailsTypeEnum {
    static var allValues: [BatchTaskExecutionDetailsTypeEnum] { [.computeTaskExecutionDetails] }
    static var allStringValues: [String] { ["COMPUTE_TASK_EXECUTION_DETAILS"] }
    static func fromString(_ value: String) -> BatchTaskExecutionDetailsTypeEnum? { BatchTaskExecutionDetailsTypeEnum(rawValue: value) }
}