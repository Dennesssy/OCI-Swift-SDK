import Foundation

// MARK: - OAuth2ClientCredentialSummary

public struct OAuth2ClientCredentialSummary: Codable, Sendable {

    public var scopes: [FullyQualifiedScope]?
    public var userId: String?
    public var expiresOn: Date?
    public var id: String?
    public var compartmentId: String?
    public var name: String?
    public var description: String?
    public var lifecycleState: OAuth2ClientCredentialSummaryLifecycleStateEnum?
    public var timeCreated: Date?

    private enum CodingKeys: String, CodingKey {
        case scopes, userId, expiresOn, id, compartmentId, name, description, lifecycleState, timeCreated
    }

    public init(
                scopes: [FullyQualifiedScope]? = nil,
                userId: String? = nil,
                expiresOn: Date? = nil,
                id: String? = nil,
                compartmentId: String? = nil,
                name: String? = nil,
                description: String? = nil,
                lifecycleState: OAuth2ClientCredentialSummaryLifecycleStateEnum? = nil,
                timeCreated: Date? = nil
    ) {
        self.scopes = scopes
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
