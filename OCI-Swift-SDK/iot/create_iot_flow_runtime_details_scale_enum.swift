import Foundation

// MARK: - CreateIotFlowRuntimeDetailsScaleEnum

public enum CreateIotFlowRuntimeDetailsScaleEnum: String, Codable, Sendable {
    case lowest = "LOWEST"
    case low = "LOW"
    case medium = "MEDIUM"
    case high = "HIGH"
    case highest = "HIGHEST"
}

public extension CreateIotFlowRuntimeDetailsScaleEnum {
    static var allValues: [CreateIotFlowRuntimeDetailsScaleEnum] { [.lowest, .low, .medium, .high, .highest] }
    static var allStringValues: [String] { ["LOWEST", "LOW", "MEDIUM", "HIGH", "HIGHEST"] }
    static func fromString(_ value: String) -> CreateIotFlowRuntimeDetailsScaleEnum? { CreateIotFlowRuntimeDetailsScaleEnum(rawValue: value) }
}