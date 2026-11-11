import Foundation

// MARK: - FleetTypeEnum

public enum FleetTypeEnum: String, Codable, Sendable {
    case fleet = "SERVICE_MANAGED_FLEET"
    case gpuFleet = "SERVICE_MANAGED_GPU_FLEET"
}

public extension FleetTypeEnum {
    static var allValues: [FleetTypeEnum] { [.fleet, .gpuFleet] }
    static var allStringValues: [String] { ["SERVICE_MANAGED_FLEET", "SERVICE_MANAGED_GPU_FLEET"] }
    static func fromString(_ value: String) -> FleetTypeEnum? { FleetTypeEnum(rawValue: value) }
}