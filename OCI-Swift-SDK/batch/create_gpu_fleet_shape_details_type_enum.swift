import Foundation

// MARK: - CreateGpuFleetShapeDetailsTypeEnum

public enum CreateGpuFleetShapeDetailsTypeEnum: String, Codable, Sendable {
    case fixedGpuFleetShape = "FIXED_GPU_FLEET_SHAPE"
}

public extension CreateGpuFleetShapeDetailsTypeEnum {
    static var allValues: [CreateGpuFleetShapeDetailsTypeEnum] { [.fixedGpuFleetShape] }
    static var allStringValues: [String] { ["FIXED_GPU_FLEET_SHAPE"] }
    static func fromString(_ value: String) -> CreateGpuFleetShapeDetailsTypeEnum? { CreateGpuFleetShapeDetailsTypeEnum(rawValue: value) }
}