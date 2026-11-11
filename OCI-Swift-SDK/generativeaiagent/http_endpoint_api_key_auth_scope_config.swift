import Foundation

// MARK: - HttpEndpointApiKeyAuthScopeConfig

public struct HttpEndpointApiKeyAuthScopeConfig: Codable, Sendable {

    public var keyName: String?
    public var vaultSecretId: String?
    public var keyLocation: HttpEndpointApiKeyAuthScopeConfigKeyLocationEnum

    private enum CodingKeys: String, CodingKey {
        case keyName, vaultSecretId, keyLocation
    }

    public init(
                keyName: String? = nil,
                vaultSecretId: String? = nil,
                keyLocation: HttpEndpointApiKeyAuthScopeConfigKeyLocationEnum
    ) {
        self.keyName = keyName
        self.vaultSecretId = vaultSecretId
        self.keyLocation = keyLocation
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension HttpEndpointApiKeyAuthScopeConfig: CustomStringConvertible {
    public var description: String { "HttpEndpointApiKeyAuthScopeConfig()" }
}