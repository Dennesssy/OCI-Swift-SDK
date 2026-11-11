import Foundation

// MARK: - CreateOAuth2ClientCredentialDetails

public struct CreateOAuth2ClientCredentialDetails: Codable, Sendable {

    public var name: String?
    public var description: String?
    public var scopes: [FullyQualifiedScope]

    private enum CodingKeys: String, CodingKey {
        case name, description, scopes
    }

    public init(
                name: String? = nil,
                description: String? = nil,
                scopes: [FullyQualifiedScope]
    ) {
        self.name = name
        self.description = description
        self.scopes = scopes
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
