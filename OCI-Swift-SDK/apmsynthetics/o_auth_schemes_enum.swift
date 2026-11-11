import Foundation

// MARK: - OAuthSchemesEnum

public enum OAuthSchemesEnum: String, Codable, Sendable {
    case none = "NONE"
    case basic = "BASIC"
}

public extension OAuthSchemesEnum {
    static var allValues: [OAuthSchemesEnum] { [.none, .basic] }
    static var allStringValues: [String] { ["NONE", "BASIC"] }
    static func fromString(_ value: String) -> OAuthSchemesEnum? { OAuthSchemesEnum(rawValue: value) }
}