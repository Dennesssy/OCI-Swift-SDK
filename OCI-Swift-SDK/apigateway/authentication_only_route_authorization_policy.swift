import Foundation

// MARK: - AuthenticationOnlyRouteAuthorizationPolicy

public struct AuthenticationOnlyRouteAuthorizationPolicy: Codable, Sendable {

    public init() {}
}

extension AuthenticationOnlyRouteAuthorizationPolicy: CustomStringConvertible {
    public var description: String { "AuthenticationOnlyRouteAuthorizationPolicy()" }
}