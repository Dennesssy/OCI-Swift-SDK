import Foundation

// MARK: - UpdateIotFlowRuntimeDetailsScaleEnum

public enum UpdateIotFlowRuntimeDetailsScaleEnum: String, Codable, Sendable {
    case lowest = "LOWEST"
    case low = "LOW"
    case medium = "MEDIUM"
    case high = "HIGH"
    case highest = "HIGHEST"
}

public extension UpdateIotFlowRuntimeDetailsScaleEnum {
    static var allValues: [UpdateIotFlowRuntimeDetailsScaleEnum] { [.lowest, .low, .medium, .high, .highest] }
    static var allStringValues: [String] { ["LOWEST", "LOW", "MEDIUM", "HIGH", "HIGHEST"] }
    static func fromString(_ value: String) -> UpdateIotFlowRuntimeDetailsScaleEnum? { UpdateIotFlowRuntimeDetailsScaleEnum(rawValue: value) }
}