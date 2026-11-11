import Foundation

// MARK: - ResponseCacheLookupPolicyTypeEnum

public enum ResponseCacheLookupPolicyTypeEnum: String, Codable, Sendable {
    case simpleLookupPolicy = "SIMPLE_LOOKUP_POLICY"
}

public extension ResponseCacheLookupPolicyTypeEnum {
    static var allValues: [ResponseCacheLookupPolicyTypeEnum] { [.simpleLookupPolicy] }
    static var allStringValues: [String] { ["SIMPLE_LOOKUP_POLICY"] }
    static func fromString(_ value: String) -> ResponseCacheLookupPolicyTypeEnum? { ResponseCacheLookupPolicyTypeEnum(rawValue: value) }
}