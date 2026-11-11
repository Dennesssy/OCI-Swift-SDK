import Foundation

// MARK: - MetadataTestTypeEnum

public enum MetadataTestTypeEnum: String, Codable, Sendable {
    case passive = "PASSIVE"
    case active = "ACTIVE"
}

public extension MetadataTestTypeEnum {
    static var allValues: [MetadataTestTypeEnum] { [.passive, .active] }
    static var allStringValues: [String] { ["PASSIVE", "ACTIVE"] }
    static func fromString(_ value: String) -> MetadataTestTypeEnum? { MetadataTestTypeEnum(rawValue: value) }
}