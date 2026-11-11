import Foundation

// MARK: - PublicKeySetTypeEnum

public enum PublicKeySetTypeEnum: String, Codable, Sendable {
    case staticKeys = "STATIC_KEYS"
    case remoteJwks = "REMOTE_JWKS"
}

public extension PublicKeySetTypeEnum {
    static var allValues: [PublicKeySetTypeEnum] { [.staticKeys, .remoteJwks] }
    static var allStringValues: [String] { ["STATIC_KEYS", "REMOTE_JWKS"] }
    static func fromString(_ value: String) -> PublicKeySetTypeEnum? { PublicKeySetTypeEnum(rawValue: value) }
}