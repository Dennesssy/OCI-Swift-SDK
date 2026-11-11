import Foundation

// MARK: - TokenAuthenticationValidationPolicyTypeEnum

public enum TokenAuthenticationValidationPolicyTypeEnum: String, Codable, Sendable {
    case staticKeys = "STATIC_KEYS"
    case remoteJwks = "REMOTE_JWKS"
    case remoteDiscovery = "REMOTE_DISCOVERY"
}

public extension TokenAuthenticationValidationPolicyTypeEnum {
    static var allValues: [TokenAuthenticationValidationPolicyTypeEnum] { [.staticKeys, .remoteJwks, .remoteDiscovery] }
    static var allStringValues: [String] { ["STATIC_KEYS", "REMOTE_JWKS", "REMOTE_DISCOVERY"] }
    static func fromString(_ value: String) -> TokenAuthenticationValidationPolicyTypeEnum? { TokenAuthenticationValidationPolicyTypeEnum(rawValue: value) }
}