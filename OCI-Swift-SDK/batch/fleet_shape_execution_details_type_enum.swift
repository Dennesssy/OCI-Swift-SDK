import Foundation

// MARK: - FleetShapeExecutionDetailsTypeEnum

public enum FleetShapeExecutionDetailsTypeEnum: String, Codable, Sendable {
    case cpuFleetShapeExecutionDetails = "CPU_FLEET_SHAPE_EXECUTION_DETAILS"
    case gpuFleetShapeExecutionDetails = "GPU_FLEET_SHAPE_EXECUTION_DETAILS"
}

public extension FleetShapeExecutionDetailsTypeEnum {
    static var allValues: [FleetShapeExecutionDetailsTypeEnum] { [.cpuFleetShapeExecutionDetails, .gpuFleetShapeExecutionDetails] }
    static var allStringValues: [String] { ["CPU_FLEET_SHAPE_EXECUTION_DETAILS", "GPU_FLEET_SHAPE_EXECUTION_DETAILS"] }
    static func fromString(_ value: String) -> FleetShapeExecutionDetailsTypeEnum? { FleetShapeExecutionDetailsTypeEnum(rawValue: value) }
}