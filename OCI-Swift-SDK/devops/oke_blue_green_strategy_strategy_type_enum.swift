import Foundation

// MARK: - OkeBlueGreenStrategyStrategyTypeEnum

public enum OkeBlueGreenStrategyStrategyTypeEnum: String, Codable, Sendable {
    case nginxBlueGreenStrategy = "NGINX_BLUE_GREEN_STRATEGY"
}

public extension OkeBlueGreenStrategyStrategyTypeEnum {
    static var allValues: [OkeBlueGreenStrategyStrategyTypeEnum] { [.nginxBlueGreenStrategy] }
    static var allStringValues: [String] { ["NGINX_BLUE_GREEN_STRATEGY"] }
    static func fromString(_ value: String) -> OkeBlueGreenStrategyStrategyTypeEnum? { OkeBlueGreenStrategyStrategyTypeEnum(rawValue: value) }
}