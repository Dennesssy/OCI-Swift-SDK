import Foundation

// MARK: - ResponseCacheStorePolicyTypeEnum

public enum ResponseCacheStorePolicyTypeEnum: String, Codable, Sendable {
    case fixedTtlStorePolicy = "FIXED_TTL_STORE_POLICY"
}

public extension ResponseCacheStorePolicyTypeEnum {
    static var allValues: [ResponseCacheStorePolicyTypeEnum] { [.fixedTtlStorePolicy] }
    static var allStringValues: [String] { ["FIXED_TTL_STORE_POLICY"] }
    static func fromString(_ value: String) -> ResponseCacheStorePolicyTypeEnum? { ResponseCacheStorePolicyTypeEnum(rawValue: value) }
}