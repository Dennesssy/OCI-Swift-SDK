import Foundation

// MARK: - CreateBatchTaskProfileExtendedInformationDetailsTypeEnum

public enum CreateBatchTaskProfileExtendedInformationDetailsTypeEnum: String, Codable, Sendable {
    case cpuArchitectureTaskProfileExtendedInformation = "CPU_ARCHITECTURE_TASK_PROFILE_EXTENDED_INFORMATION"
    case cpuShapeTaskProfileExtendedInformation = "CPU_SHAPE_TASK_PROFILE_EXTENDED_INFORMATION"
    case gpuShapeTaskProfileExtendedInformation = "GPU_SHAPE_TASK_PROFILE_EXTENDED_INFORMATION"
}

public extension CreateBatchTaskProfileExtendedInformationDetailsTypeEnum {
    static var allValues: [CreateBatchTaskProfileExtendedInformationDetailsTypeEnum] { [.cpuArchitectureTaskProfileExtendedInformation, .cpuShapeTaskProfileExtendedInformation, .gpuShapeTaskProfileExtendedInformation] }
    static var allStringValues: [String] { ["CPU_ARCHITECTURE_TASK_PROFILE_EXTENDED_INFORMATION", "CPU_SHAPE_TASK_PROFILE_EXTENDED_INFORMATION", "GPU_SHAPE_TASK_PROFILE_EXTENDED_INFORMATION"] }
    static func fromString(_ value: String) -> CreateBatchTaskProfileExtendedInformationDetailsTypeEnum? { CreateBatchTaskProfileExtendedInformationDetailsTypeEnum(rawValue: value) }
}