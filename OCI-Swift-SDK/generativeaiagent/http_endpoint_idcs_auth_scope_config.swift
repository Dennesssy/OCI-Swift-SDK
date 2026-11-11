import Foundation

// MARK: - HttpEndpointIdcsAuthScopeConfig

public struct HttpEndpointIdcsAuthScopeConfig: Codable, Sendable {

    public var idcsUrl: String?
    public var scopeUrl: String?
    public var clientId: String?
    public var vaultSecretId: String?

    private enum CodingKeys: String, CodingKey {
        case idcsUrl, scopeUrl, clientId, vaultSecretId
    }

    public init(
                idcsUrl: String? = nil,
                scopeUrl: String? = nil,
                clientId: String? = nil,
                vaultSecretId: String? = nil
    ) {
        self.idcsUrl = idcsUrl
        self.scopeUrl = scopeUrl
        self.clientId = clientId
        self.vaultSecretId = vaultSecretId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension HttpEndpointIdcsAuthScopeConfig: CustomStringConvertible {
    public var description: String { "HttpEndpointIdcsAuthScopeConfig()" }
}