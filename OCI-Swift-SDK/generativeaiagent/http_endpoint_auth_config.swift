import Foundation

// MARK: - HttpEndpointAuthConfig

public struct HttpEndpointAuthConfig: Codable, Sendable {

    public var httpEndpointAuthSources: [HttpEndpointAuthSource]

    private enum CodingKeys: String, CodingKey {
        case httpEndpointAuthSources
    }

    public init(
                httpEndpointAuthSources: [HttpEndpointAuthSource]
    ) {
        self.httpEndpointAuthSources = httpEndpointAuthSources
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension HttpEndpointAuthConfig: CustomStringConvertible {
    public var description: String { "HttpEndpointAuthConfig()" }
}