import Foundation

// MARK: - HttpEndpointBasicAuthScopeConfig

public struct HttpEndpointBasicAuthScopeConfig: Codable, Sendable {

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

extension HttpEndpointBasicAuthScopeConfig: CustomStringConvertible {
    public var description: String { "HttpEndpointBasicAuthScopeConfig()" }
}