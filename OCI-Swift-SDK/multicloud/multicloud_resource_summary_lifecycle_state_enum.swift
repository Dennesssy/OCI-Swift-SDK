import Foundation

// MARK: - MulticloudResourceSummaryLifecycleStateEnum

public enum MulticloudResourceSummaryLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case inactive = "INACTIVE"
}

public extension MulticloudResourceSummaryLifecycleStateEnum {
    static var allValues: [MulticloudResourceSummaryLifecycleStateEnum] { [.active, .inactive] }
    static var allStringValues: [String] { ["ACTIVE", "INACTIVE"] }
    static func fromString(_ value: String) -> MulticloudResourceSummaryLifecycleStateEnum? { MulticloudResourceSummaryLifecycleStateEnum(rawValue: value) }
}