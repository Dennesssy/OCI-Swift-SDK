import Foundation

// MARK: - FilterQueryParameterPolicyTypeEnum

public enum FilterQueryParameterPolicyTypeEnum: String, Codable, Sendable {
    case allow = "ALLOW"
    case block = "BLOCK"
}

public extension FilterQueryParameterPolicyTypeEnum {
    static var allValues: [FilterQueryParameterPolicyTypeEnum] { [.allow, .block] }
    static var allStringValues: [String] { ["ALLOW", "BLOCK"] }
    static func fromString(_ value: String) -> FilterQueryParameterPolicyTypeEnum? { FilterQueryParameterPolicyTypeEnum(rawValue: value) }
}