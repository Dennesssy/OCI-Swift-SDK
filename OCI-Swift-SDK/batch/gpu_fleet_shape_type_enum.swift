import Foundation

// MARK: - GpuFleetShapeTypeEnum

public enum GpuFleetShapeTypeEnum: String, Codable, Sendable {
    case fixedGpuFleetShape = "FIXED_GPU_FLEET_SHAPE"
}

public extension GpuFleetShapeTypeEnum {
    static var allValues: [GpuFleetShapeTypeEnum] { [.fixedGpuFleetShape] }
    static var allStringValues: [String] { ["FIXED_GPU_FLEET_SHAPE"] }
    static func fromString(_ value: String) -> GpuFleetShapeTypeEnum? { GpuFleetShapeTypeEnum(rawValue: value) }
}