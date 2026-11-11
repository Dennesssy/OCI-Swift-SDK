import Foundation

// MARK: - EnrichmentJobTypeEnum

public enum EnrichmentJobTypeEnum: String, Codable, Sendable {
    case fullBuild = "FULL_BUILD"
    case partialBuild = "PARTIAL_BUILD"
    case deltaRefresh = "DELTA_REFRESH"
}

public extension EnrichmentJobTypeEnum {
    static var allValues: [EnrichmentJobTypeEnum] { [.fullBuild, .partialBuild, .deltaRefresh] }
    static var allStringValues: [String] { ["FULL_BUILD", "PARTIAL_BUILD", "DELTA_REFRESH"] }
    static func fromString(_ value: String) -> EnrichmentJobTypeEnum? { EnrichmentJobTypeEnum(rawValue: value) }
}