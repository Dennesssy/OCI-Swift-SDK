import Foundation

// MARK: - FilterHeaderPolicyTypeEnum

public enum FilterHeaderPolicyTypeEnum: String, Codable, Sendable {
    case allow = "ALLOW"
    case block = "BLOCK"
}

public extension FilterHeaderPolicyTypeEnum {
    static var allValues: [FilterHeaderPolicyTypeEnum] { [.allow, .block] }
    static var allStringValues: [String] { ["ALLOW", "BLOCK"] }
    static func fromString(_ value: String) -> FilterHeaderPolicyTypeEnum? { FilterHeaderPolicyTypeEnum(rawValue: value) }
}