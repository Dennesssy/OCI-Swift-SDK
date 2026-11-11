import Foundation

// MARK: - PlatformRuntimeConfigPlatformRuntimeConfigTypeEnum

public enum PlatformRuntimeConfigPlatformRuntimeConfigTypeEnum: String, Codable, Sendable {
    case agentPlatform = "AGENT_PLATFORM"
    case fusionReasoning = "FUSION_REASONING"
}

public extension PlatformRuntimeConfigPlatformRuntimeConfigTypeEnum {
    static var allValues: [PlatformRuntimeConfigPlatformRuntimeConfigTypeEnum] { [.agentPlatform, .fusionReasoning] }
    static var allStringValues: [String] { ["AGENT_PLATFORM", "FUSION_REASONING"] }
    static func fromString(_ value: String) -> PlatformRuntimeConfigPlatformRuntimeConfigTypeEnum? { PlatformRuntimeConfigPlatformRuntimeConfigTypeEnum(rawValue: value) }
}