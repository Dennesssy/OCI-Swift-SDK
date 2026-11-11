import Foundation

// MARK: - AnonymousRouteAuthorizationPolicy

public struct AnonymousRouteAuthorizationPolicy: Codable, Sendable {

    public init() {}
}

extension AnonymousRouteAuthorizationPolicy: CustomStringConvertible {
    public var description: String { "AnonymousRouteAuthorizationPolicy()" }
}