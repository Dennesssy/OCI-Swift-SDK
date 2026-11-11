import Foundation

// MARK: - TriggerActionTypeEnum

public enum TriggerActionTypeEnum: String, Codable, Sendable {
    case triggerBuildPipeline = "TRIGGER_BUILD_PIPELINE"
}

public extension TriggerActionTypeEnum {
    static var allValues: [TriggerActionTypeEnum] { [.triggerBuildPipeline] }
    static var allStringValues: [String] { ["TRIGGER_BUILD_PIPELINE"] }
    static func fromString(_ value: String) -> TriggerActionTypeEnum? { TriggerActionTypeEnum(rawValue: value) }
}