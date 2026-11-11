import Foundation

// MARK: - UpdateOAuth2ClientCredentialDetails

public struct UpdateOAuth2ClientCredentialDetails: Codable, Sendable {

    public var description: String?
    public var scopes: [FullyQualifiedScope]
    public var isResetPassword: Bool?

    private enum CodingKeys: String, CodingKey {
        case description, scopes, isResetPassword
    }

    public init(
                description: String? = nil,
                scopes: [FullyQualifiedScope],
                isResetPassword: Bool? = nil
    ) {
        self.description = description
        self.scopes = scopes
        self.isResetPassword = isResetPassword
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
