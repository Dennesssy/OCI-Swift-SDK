import Foundation

// MARK: - IotFlowRuntimeSummaryScaleEnum

public enum IotFlowRuntimeSummaryScaleEnum: String, Codable, Sendable {
    case lowest = "LOWEST"
    case low = "LOW"
    case medium = "MEDIUM"
    case high = "HIGH"
    case highest = "HIGHEST"
}

public extension IotFlowRuntimeSummaryScaleEnum {
    static var allValues: [IotFlowRuntimeSummaryScaleEnum] { [.lowest, .low, .medium, .high, .highest] }
    static var allStringValues: [String] { ["LOWEST", "LOW", "MEDIUM", "HIGH", "HIGHEST"] }
    static func fromString(_ value: String) -> IotFlowRuntimeSummaryScaleEnum? { IotFlowRuntimeSummaryScaleEnum(rawValue: value) }
}