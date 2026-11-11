import Foundation
import OCICommon

// MARK: - User

public struct User: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var name: String?
    public var description: String?
    public var timeCreated: Date?
    public var lifecycleState: UserLifecycleStateEnum
    public var isMfaActivated: Bool?
    public var email: String?
    public var emailVerified: Bool?
    public var dbUserName: String?
    public var identityProviderId: String?
    public var externalIdentifier: String?
    public var inactiveStatus: Int64?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var capabilities: UserCapabilities?
    public var lastSuccessfulLoginTime: Date?
    public var previousSuccessfulLoginTime: Date?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, name, description, timeCreated, lifecycleState, isMfaActivated, email, emailVerified, dbUserName, identityProviderId, externalIdentifier, inactiveStatus, freeformTags, definedTags, capabilities, lastSuccessfulLoginTime, previousSuccessfulLoginTime
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                name: String? = nil,
                description: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: UserLifecycleStateEnum,
                isMfaActivated: Bool? = nil,
                email: String? = nil,
                emailVerified: Bool? = nil,
                dbUserName: String? = nil,
                identityProviderId: String? = nil,
                externalIdentifier: String? = nil,
                inactiveStatus: Int64? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                capabilities: UserCapabilities? = nil,
                lastSuccessfulLoginTime: Date? = nil,
                previousSuccessfulLoginTime: Date? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.name = name
        self.description = description
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.isMfaActivated = isMfaActivated
        self.email = email
        self.emailVerified = emailVerified
        self.dbUserName = dbUserName
        self.identityProviderId = identityProviderId
        self.externalIdentifier = externalIdentifier
        self.inactiveStatus = inactiveStatus
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.capabilities = capabilities
        self.lastSuccessfulLoginTime = lastSuccessfulLoginTime
        self.previousSuccessfulLoginTime = previousSuccessfulLoginTime
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
