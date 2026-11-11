import Foundation

// MARK: - ComputeInstanceGroupSelectorSelectorTypeEnum

public enum ComputeInstanceGroupSelectorSelectorTypeEnum: String, Codable, Sendable {
    case ids = "INSTANCE_IDS"
    case query = "INSTANCE_QUERY"
}

public extension ComputeInstanceGroupSelectorSelectorTypeEnum {
    static var allValues: [ComputeInstanceGroupSelectorSelectorTypeEnum] { [.ids, .query] }
    static var allStringValues: [String] { ["INSTANCE_IDS", "INSTANCE_QUERY"] }
    static func fromString(_ value: String) -> ComputeInstanceGroupSelectorSelectorTypeEnum? { ComputeInstanceGroupSelectorSelectorTypeEnum(rawValue: value) }
}