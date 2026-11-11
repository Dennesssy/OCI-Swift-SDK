import Foundation

// MARK: - OkeCanaryStrategyStrategyTypeEnum

public enum OkeCanaryStrategyStrategyTypeEnum: String, Codable, Sendable {
    case nginxCanaryStrategy = "NGINX_CANARY_STRATEGY"
}

public extension OkeCanaryStrategyStrategyTypeEnum {
    static var allValues: [OkeCanaryStrategyStrategyTypeEnum] { [.nginxCanaryStrategy] }
    static var allStringValues: [String] { ["NGINX_CANARY_STRATEGY"] }
    static func fromString(_ value: String) -> OkeCanaryStrategyStrategyTypeEnum? { OkeCanaryStrategyStrategyTypeEnum(rawValue: value) }
}