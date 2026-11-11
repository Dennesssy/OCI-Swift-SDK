import Foundation

// MARK: - RouteAuthorizationPolicyTypeEnum

public enum RouteAuthorizationPolicyTypeEnum: String, Codable, Sendable {
    case anonymous = "ANONYMOUS"
    case anyOf = "ANY_OF"
    case authenticationOnly = "AUTHENTICATION_ONLY"
}

public extension RouteAuthorizationPolicyTypeEnum {
    static var allValues: [RouteAuthorizationPolicyTypeEnum] { [.anonymous, .anyOf, .authenticationOnly] }
    static var allStringValues: [String] { ["ANONYMOUS", "ANY_OF", "AUTHENTICATION_ONLY"] }
    static func fromString(_ value: String) -> RouteAuthorizationPolicyTypeEnum? { RouteAuthorizationPolicyTypeEnum(rawValue: value) }
}