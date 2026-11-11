import Foundation

// MARK: - UserCapabilities

public struct UserCapabilities: Codable, Sendable {

    public var canUseConsolePassword: Bool?
    public var canUseApiKeys: Bool?
    public var canUseAuthTokens: Bool?
    public var canUseSmtpCredentials: Bool?
    public var canUseDbCredentials: Bool?
    public var canUseCustomerSecretKeys: Bool?
    public var canUseOAuth2ClientCredentials: Bool?

    private enum CodingKeys: String, CodingKey {
        case canUseConsolePassword, canUseApiKeys, canUseAuthTokens, canUseSmtpCredentials, canUseDbCredentials, canUseCustomerSecretKeys, canUseOAuth2ClientCredentials
    }

    public init(
                canUseConsolePassword: Bool? = nil,
                canUseApiKeys: Bool? = nil,
                canUseAuthTokens: Bool? = nil,
                canUseSmtpCredentials: Bool? = nil,
                canUseDbCredentials: Bool? = nil,
                canUseCustomerSecretKeys: Bool? = nil,
                canUseOAuth2ClientCredentials: Bool? = nil
    ) {
        self.canUseConsolePassword = canUseConsolePassword
        self.canUseApiKeys = canUseApiKeys
        self.canUseAuthTokens = canUseAuthTokens
        self.canUseSmtpCredentials = canUseSmtpCredentials
        self.canUseDbCredentials = canUseDbCredentials
        self.canUseCustomerSecretKeys = canUseCustomerSecretKeys
        self.canUseOAuth2ClientCredentials = canUseOAuth2ClientCredentials
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UserCapabilities: CustomStringConvertible {
    public var description: String { "UserCapabilities()" }
}