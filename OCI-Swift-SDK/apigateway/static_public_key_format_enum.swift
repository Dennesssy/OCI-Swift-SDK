import Foundation

// MARK: - StaticPublicKeyFormatEnum

public enum StaticPublicKeyFormatEnum: String, Codable, Sendable {
    case jsonWebKey = "JSON_WEB_KEY"
    case pem = "PEM"
}

public extension StaticPublicKeyFormatEnum {
    static var allValues: [StaticPublicKeyFormatEnum] { [.jsonWebKey, .pem] }
    static var allStringValues: [String] { ["JSON_WEB_KEY", "PEM"] }
    static func fromString(_ value: String) -> StaticPublicKeyFormatEnum? { StaticPublicKeyFormatEnum(rawValue: value) }
}