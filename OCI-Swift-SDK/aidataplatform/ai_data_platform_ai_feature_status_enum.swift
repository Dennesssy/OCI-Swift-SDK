import Foundation

// MARK: - AiDataPlatformAiFeatureStatusEnum

public enum AiDataPlatformAiFeatureStatusEnum: String, Codable, Sendable {
    case disabled = "DISABLED"
    case enabling = "ENABLING"
    case ready = "READY"
    case failed = "FAILED"
}

public extension AiDataPlatformAiFeatureStatusEnum {
    static var allValues: [AiDataPlatformAiFeatureStatusEnum] { [.disabled, .enabling, .ready, .failed] }
    static var allStringValues: [String] { ["DISABLED", "ENABLING", "READY", "FAILED"] }
    static func fromString(_ value: String) -> AiDataPlatformAiFeatureStatusEnum? { AiDataPlatformAiFeatureStatusEnum(rawValue: value) }
}