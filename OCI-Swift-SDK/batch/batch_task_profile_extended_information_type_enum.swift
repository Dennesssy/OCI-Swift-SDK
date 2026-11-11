import Foundation

// MARK: - BatchTaskProfileExtendedInformationTypeEnum

public enum BatchTaskProfileExtendedInformationTypeEnum: String, Codable, Sendable {
    case cpuArchitectureTaskProfileExtendedInformation = "CPU_ARCHITECTURE_TASK_PROFILE_EXTENDED_INFORMATION"
    case cpuShapeTaskProfileExtendedInformation = "CPU_SHAPE_TASK_PROFILE_EXTENDED_INFORMATION"
    case gpuShapeTaskProfileExtendedInformation = "GPU_SHAPE_TASK_PROFILE_EXTENDED_INFORMATION"
}

public extension BatchTaskProfileExtendedInformationTypeEnum {
    static var allValues: [BatchTaskProfileExtendedInformationTypeEnum] { [.cpuArchitectureTaskProfileExtendedInformation, .cpuShapeTaskProfileExtendedInformation, .gpuShapeTaskProfileExtendedInformation] }
    static var allStringValues: [String] { ["CPU_ARCHITECTURE_TASK_PROFILE_EXTENDED_INFORMATION", "CPU_SHAPE_TASK_PROFILE_EXTENDED_INFORMATION", "GPU_SHAPE_TASK_PROFILE_EXTENDED_INFORMATION"] }
    static func fromString(_ value: String) -> BatchTaskProfileExtendedInformationTypeEnum? { BatchTaskProfileExtendedInformationTypeEnum(rawValue: value) }
}