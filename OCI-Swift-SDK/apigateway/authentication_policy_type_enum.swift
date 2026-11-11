import Foundation

// MARK: - AuthenticationPolicyTypeEnum

public enum AuthenticationPolicyTypeEnum: String, Codable, Sendable {
    case customAuthentication = "CUSTOM_AUTHENTICATION"
    case jwtAuthentication = "JWT_AUTHENTICATION"
    case tokenAuthentication = "TOKEN_AUTHENTICATION"
}

public extension AuthenticationPolicyTypeEnum {
    static var allValues: [AuthenticationPolicyTypeEnum] { [.customAuthentication, .jwtAuthentication, .tokenAuthentication] }
    static var allStringValues: [String] { ["CUSTOM_AUTHENTICATION", "JWT_AUTHENTICATION", "TOKEN_AUTHENTICATION"] }
    static func fromString(_ value: String) -> AuthenticationPolicyTypeEnum? { AuthenticationPolicyTypeEnum(rawValue: value) }
}