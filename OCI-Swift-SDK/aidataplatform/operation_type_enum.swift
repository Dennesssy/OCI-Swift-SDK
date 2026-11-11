import Foundation

// MARK: - OperationTypeEnum

public enum OperationTypeEnum: String, Codable, Sendable {
    case createDataLake = "CREATE_DATA_LAKE"
    case updateDataLake = "UPDATE_DATA_LAKE"
    case deleteDataLake = "DELETE_DATA_LAKE"
    case moveDataLake = "MOVE_DATA_LAKE"
    case createAiDataPlatform = "CREATE_AI_DATA_PLATFORM"
    case updateAiDataPlatform = "UPDATE_AI_DATA_PLATFORM"
    case deleteAiDataPlatform = "DELETE_AI_DATA_PLATFORM"
    case moveAiDataPlatform = "MOVE_AI_DATA_PLATFORM"
    case enableAiFeatures = "ENABLE_AI_FEATURES"
    case createWorkspace = "CREATE_WORKSPACE"
    case updateWorkspace = "UPDATE_WORKSPACE"
    case deleteWorkspace = "DELETE_WORKSPACE"
    case evaluateIamPolicies = "EVALUATE_IAM_POLICIES"
}

public extension OperationTypeEnum {
    static var allValues: [OperationTypeEnum] { [.createDataLake, .updateDataLake, .deleteDataLake, .moveDataLake, .createAiDataPlatform, .updateAiDataPlatform, .deleteAiDataPlatform, .moveAiDataPlatform, .enableAiFeatures, .createWorkspace, .updateWorkspace, .deleteWorkspace, .evaluateIamPolicies] }
    static var allStringValues: [String] { ["CREATE_DATA_LAKE", "UPDATE_DATA_LAKE", "DELETE_DATA_LAKE", "MOVE_DATA_LAKE", "CREATE_AI_DATA_PLATFORM", "UPDATE_AI_DATA_PLATFORM", "DELETE_AI_DATA_PLATFORM", "MOVE_AI_DATA_PLATFORM", "ENABLE_AI_FEATURES", "CREATE_WORKSPACE", "UPDATE_WORKSPACE", "DELETE_WORKSPACE", "EVALUATE_IAM_POLICIES"] }
    static func fromString(_ value: String) -> OperationTypeEnum? { OperationTypeEnum(rawValue: value) }
}