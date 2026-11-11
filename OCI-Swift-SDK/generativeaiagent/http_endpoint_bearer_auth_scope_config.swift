import Foundation

// MARK: - HttpEndpointBearerAuthScopeConfig

public struct HttpEndpointBearerAuthScopeConfig: Codable, Sendable {

    public var vaultSecretId: String?

    private enum CodingKeys: String, CodingKey {
        case vaultSecretId
    }

    public init(
                vaultSecretId: String? = nil
    ) {
        self.vaultSecretId = vaultSecretId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension HttpEndpointBearerAuthScopeConfig: CustomStringConvertible {
    public var description: String { "HttpEndpointBearerAuthScopeConfig()" }
}