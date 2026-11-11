import Foundation

// MARK: - SourceUriDetailsTypeEnum

public enum SourceUriDetailsTypeEnum: String, Codable, Sendable {
    case discoveryUri = "DISCOVERY_URI"
    case validationBlock = "VALIDATION_BLOCK"
}

public extension SourceUriDetailsTypeEnum {
    static var allValues: [SourceUriDetailsTypeEnum] { [.discoveryUri, .validationBlock] }
    static var allStringValues: [String] { ["DISCOVERY_URI", "VALIDATION_BLOCK"] }
    static func fromString(_ value: String) -> SourceUriDetailsTypeEnum? { SourceUriDetailsTypeEnum(rawValue: value) }
}