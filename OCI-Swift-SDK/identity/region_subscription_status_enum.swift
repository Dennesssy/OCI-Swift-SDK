import Foundation

// MARK: - RegionSubscriptionStatusEnum

public enum RegionSubscriptionStatusEnum: String, Codable, Sendable {
    case ready = "READY"
    case inProgress = "IN_PROGRESS"
}

public extension RegionSubscriptionStatusEnum {
    static var allValues: [RegionSubscriptionStatusEnum] { [.ready, .inProgress] }
    static var allStringValues: [String] { ["READY", "IN_PROGRESS"] }
    static func fromString(_ value: String) -> RegionSubscriptionStatusEnum? { RegionSubscriptionStatusEnum(rawValue: value) }
}