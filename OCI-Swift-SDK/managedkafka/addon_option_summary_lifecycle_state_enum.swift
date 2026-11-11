import Foundation

// MARK: - AddonOptionSummaryLifecycleStateEnum

public enum AddonOptionSummaryLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case inactive = "INACTIVE"
}

public extension AddonOptionSummaryLifecycleStateEnum {
    static var allValues: [AddonOptionSummaryLifecycleStateEnum] { [.active, .inactive] }
    static var allStringValues: [String] { ["ACTIVE", "INACTIVE"] }
    static func fromString(_ value: String) -> AddonOptionSummaryLifecycleStateEnum? { AddonOptionSummaryLifecycleStateEnum(rawValue: value) }
}