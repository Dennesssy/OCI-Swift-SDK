import Foundation

// MARK: - SchedulingPolicyEnum

public enum SchedulingPolicyEnum: String, Codable, Sendable {
    case all = "ALL"
    case roundRobin = "ROUND_ROBIN"
    case batchedRoundRobin = "BATCHED_ROUND_ROBIN"
}

public extension SchedulingPolicyEnum {
    static var allValues: [SchedulingPolicyEnum] { [.all, .roundRobin, .batchedRoundRobin] }
    static var allStringValues: [String] { ["ALL", "ROUND_ROBIN", "BATCHED_ROUND_ROBIN"] }
    static func fromString(_ value: String) -> SchedulingPolicyEnum? { SchedulingPolicyEnum(rawValue: value) }
}