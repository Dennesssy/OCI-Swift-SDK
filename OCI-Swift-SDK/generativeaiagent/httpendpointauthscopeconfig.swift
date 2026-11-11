import Foundation

// MARK: - httpendpointauthscopeconfig

public struct httpendpointauthscopeconfig: Codable, Sendable {

    public var jsonData: Data?
    public var httpEndpointAuthScopeConfigType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, httpEndpointAuthScopeConfigType
    }

    public init(
                jsonData: Data? = nil,
                httpEndpointAuthScopeConfigType: String? = nil
    ) {
        self.jsonData = jsonData
        self.httpEndpointAuthScopeConfigType = httpEndpointAuthScopeConfigType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension httpendpointauthscopeconfig: CustomStringConvertible {
    public var description: String { "httpendpointauthscopeconfig()" }
}