import Foundation

// MARK: - FleetAssignmentPolicyTypeEnum

public enum FleetAssignmentPolicyTypeEnum: String, Codable, Sendable {
    case bestFit = "BEST_FIT"
    case flexFit = "FLEX_FIT"
}

public extension FleetAssignmentPolicyTypeEnum {
    static var allValues: [FleetAssignmentPolicyTypeEnum] { [.bestFit, .flexFit] }
    static var allStringValues: [String] { ["BEST_FIT", "FLEX_FIT"] }
    static func fromString(_ value: String) -> FleetAssignmentPolicyTypeEnum? { FleetAssignmentPolicyTypeEnum(rawValue: value) }
}