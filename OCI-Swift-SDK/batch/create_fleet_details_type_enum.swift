import Foundation

// MARK: - CreateFleetDetailsTypeEnum

public enum CreateFleetDetailsTypeEnum: String, Codable, Sendable {
    case fleet = "SERVICE_MANAGED_FLEET"
    case gpuFleet = "SERVICE_MANAGED_GPU_FLEET"
}

public extension CreateFleetDetailsTypeEnum {
    static var allValues: [CreateFleetDetailsTypeEnum] { [.fleet, .gpuFleet] }
    static var allStringValues: [String] { ["SERVICE_MANAGED_FLEET", "SERVICE_MANAGED_GPU_FLEET"] }
    static func fromString(_ value: String) -> CreateFleetDetailsTypeEnum? { CreateFleetDetailsTypeEnum(rawValue: value) }
}