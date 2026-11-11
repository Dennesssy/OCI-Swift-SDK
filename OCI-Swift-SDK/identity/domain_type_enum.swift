import Foundation

// MARK: - DomainTypeEnum

public enum DomainTypeEnum: String, Codable, Sendable {
    case `default` = "DEFAULT"
    case secondary = "SECONDARY"
}

public extension DomainTypeEnum {
    static var allValues: [DomainTypeEnum] { [.`default`, .secondary] }
    static var allStringValues: [String] { ["DEFAULT", "SECONDARY"] }
    static func fromString(_ value: String) -> DomainTypeEnum? { DomainTypeEnum(rawValue: value) }
}