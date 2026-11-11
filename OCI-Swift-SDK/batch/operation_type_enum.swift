import Foundation

// MARK: - OperationTypeEnum

public enum OperationTypeEnum: String, Codable, Sendable {
    case createBatchContext = "CREATE_BATCH_CONTEXT"
    case updateBatchContext = "UPDATE_BATCH_CONTEXT"
    case deleteBatchContext = "DELETE_BATCH_CONTEXT"
    case startBatchContext = "START_BATCH_CONTEXT"
    case stopBatchContext = "STOP_BATCH_CONTEXT"
    case moveBatchContext = "MOVE_BATCH_CONTEXT"
    case createBatchJob = "CREATE_BATCH_JOB"
    case updateBatchJob = "UPDATE_BATCH_JOB"
    case deleteBatchJob = "DELETE_BATCH_JOB"
    case moveBatchJob = "MOVE_BATCH_JOB"
    case pauseBatchJob = "PAUSE_BATCH_JOB"
    case unpauseBatchJob = "UNPAUSE_BATCH_JOB"
    case moveBatchJobPool = "MOVE_BATCH_JOB_POOL"
    case updateBatchJobPool = "UPDATE_BATCH_JOB_POOL"
    case startBatchJobPool = "START_BATCH_JOB_POOL"
    case stopBatchJobPool = "STOP_BATCH_JOB_POOL"
    case moveBatchTaskEnvironment = "MOVE_BATCH_TASK_ENVIRONMENT"
    case moveBatchTaskProfile = "MOVE_BATCH_TASK_PROFILE"
    case `internal` = "INTERNAL"
}

public extension OperationTypeEnum {
    static var allValues: [OperationTypeEnum] { [.createBatchContext, .updateBatchContext, .deleteBatchContext, .startBatchContext, .stopBatchContext, .moveBatchContext, .createBatchJob, .updateBatchJob, .deleteBatchJob, .moveBatchJob, .pauseBatchJob, .unpauseBatchJob, .moveBatchJobPool, .updateBatchJobPool, .startBatchJobPool, .stopBatchJobPool, .moveBatchTaskEnvironment, .moveBatchTaskProfile, .`internal`] }
    static var allStringValues: [String] { ["CREATE_BATCH_CONTEXT", "UPDATE_BATCH_CONTEXT", "DELETE_BATCH_CONTEXT", "START_BATCH_CONTEXT", "STOP_BATCH_CONTEXT", "MOVE_BATCH_CONTEXT", "CREATE_BATCH_JOB", "UPDATE_BATCH_JOB", "DELETE_BATCH_JOB", "MOVE_BATCH_JOB", "PAUSE_BATCH_JOB", "UNPAUSE_BATCH_JOB", "MOVE_BATCH_JOB_POOL", "UPDATE_BATCH_JOB_POOL", "START_BATCH_JOB_POOL", "STOP_BATCH_JOB_POOL", "MOVE_BATCH_TASK_ENVIRONMENT", "MOVE_BATCH_TASK_PROFILE", "INTERNAL"] }
    static func fromString(_ value: String) -> OperationTypeEnum? { OperationTypeEnum(rawValue: value) }
}