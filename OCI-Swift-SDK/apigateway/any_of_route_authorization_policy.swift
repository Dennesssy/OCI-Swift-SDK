import Foundation

// MARK: - AnyOfRouteAuthorizationPolicy

public struct AnyOfRouteAuthorizationPolicy: Codable, Sendable {

    public var allowedScope: [String]

    private enum CodingKeys: String, CodingKey {
        case allowedScope
    }

    public init(
                allowedScope: [String]
    ) {
        self.allowedScope = allowedScope
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AnyOfRouteAuthorizationPolicy: CustomStringConvertible {
    public var description: String { "AnyOfRouteAuthorizationPolicy()" }
}