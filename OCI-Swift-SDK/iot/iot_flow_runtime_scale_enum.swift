import Foundation

// MARK: - IotFlowRuntimeScaleEnum

public enum IotFlowRuntimeScaleEnum: String, Codable, Sendable {
    case lowest = "LOWEST"
    case low = "LOW"
    case medium = "MEDIUM"
    case high = "HIGH"
    case highest = "HIGHEST"
}

public extension IotFlowRuntimeScaleEnum {
    static var allValues: [IotFlowRuntimeScaleEnum] { [.lowest, .low, .medium, .high, .highest] }
    static var allStringValues: [String] { ["LOWEST", "LOW", "MEDIUM", "HIGH", "HIGHEST"] }
    static func fromString(_ value: String) -> IotFlowRuntimeScaleEnum? { IotFlowRuntimeScaleEnum(rawValue: value) }
}