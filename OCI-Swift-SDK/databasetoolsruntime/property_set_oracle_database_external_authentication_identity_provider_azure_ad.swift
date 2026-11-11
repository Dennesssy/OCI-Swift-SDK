import Foundation

// MARK: - PropertySetOracleDatabaseExternalAuthenticationIdentityProviderAzureAd

public struct PropertySetOracleDatabaseExternalAuthenticationIdentityProviderAzureAd: Codable, Sendable {

    public var configs: [String: String]

    private enum CodingKeys: String, CodingKey {
        case configs
    }

    public init(
                configs: [String: String]
    ) {
        self.configs = configs
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PropertySetOracleDatabaseExternalAuthenticationIdentityProviderAzureAd: CustomStringConvertible {
    public var description: String { "PropertySetOracleDatabaseExternalAuthenticationIdentityProviderAzureAd()" }
}