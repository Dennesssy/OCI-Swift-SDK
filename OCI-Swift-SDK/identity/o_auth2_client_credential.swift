import Foundation

// MARK: - OAuth2ClientCredential

public struct OAuth2ClientCredential: Codable, Sendable {

    public var scopes: [FullyQualifiedScope]?
    public var password: String?
    public var userId: String?
    public var expiresOn: Date?
    public var id: String?
    public var compartmentId: String?
    public var name: String?
    public var description: String?
    public var lifecycleState: OAuth2ClientCredentialLifecycleStateEnum?
    public var timeCreated: Date?

    private enum CodingKeys: String, CodingKey {
        case scopes, password, userId, expiresOn, id, compartmentId, name, description, lifecycleState, timeCreated
    }

    public init(
                scopes: [FullyQualifiedScope]? = nil,
                password: String? = nil,
                userId: String? = nil,
                expiresOn: Date? = nil,
                id: String? = nil,
                compartmentId: String? = nil,
                name: String? = nil,
                description: String? = nil,
                lifecycleState: OAuth2ClientCredentialLifecycleStateEnum? = nil,
                timeCreated: Date? = nil
    ) {
        self.scopes = scopes
        self.password = password
        self.userId = userId
        self.expiresOn = expiresOn
        self.id = id
        self.compartmentId = compartmentId
        self.name = name
        self.description = description
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
