import Foundation

// MARK: - RecommendationTypeEnum

public enum RecommendationTypeEnum: String, Codable, Sendable {
    case critical = "CRITICAL"
    case warning = "WARNING"
    case info = "INFO"
}

public extension RecommendationTypeEnum {
    static var allValues: [RecommendationTypeEnum] { [.critical, .warning, .info] }
    static var allStringValues: [String] { ["CRITICAL", "WARNING", "INFO"] }
    static func fromString(_ value: String) -> RecommendationTypeEnum? { RecommendationTypeEnum(rawValue: value) }
}