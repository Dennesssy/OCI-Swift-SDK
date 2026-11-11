import Foundation
import OCICommon

// MARK: - HttpEndpointAuthSource

public struct HttpEndpointAuthSource: Codable, Sendable {

    public var httpEndpointAuthScope: HttpEndpointAuthSourceHttpEndpointAuthScopeEnum
    public var httpEndpointAuthScopeConfig: JSONValue

    private enum CodingKeys: String, CodingKey {
        case httpEndpointAuthScope, httpEndpointAuthScopeConfig
    }

    public init(
                httpEndpointAuthScope: HttpEndpointAuthSourceHttpEndpointAuthScopeEnum,
                httpEndpointAuthScopeConfig: JSONValue
    ) {
        self.httpEndpointAuthScope = httpEndpointAuthScope
        self.httpEndpointAuthScopeConfig = httpEndpointAuthScopeConfig
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension HttpEndpointAuthSource: CustomStringConvertible {
    public var description: String { "HttpEndpointAuthSource()" }
}