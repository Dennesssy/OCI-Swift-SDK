import Foundation
import OCICommon

// MARK: - Instance

public struct Instance: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var identityDomainUrl: String?
    public var adminIdentityDomainUserId: String?
    public var timeCreated: Date?
    public var lifecycleState: InstanceLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var systemTags: [String: [String: JSONValue]]
    public var identityDomainWebAuthClientId: String?
    public var identityDomainWebAuthClientSecretVaultId: String?
    public var publicIp: String?
    public var serviceEndpoint: String?
    public var uiEndpoint: String?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, identityDomainUrl, adminIdentityDomainUserId, timeCreated, lifecycleState, freeformTags, definedTags, systemTags, identityDomainWebAuthClientId, identityDomainWebAuthClientSecretVaultId, publicIp, serviceEndpoint, uiEndpoint, timeUpdated, lifecycleDetails
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                identityDomainUrl: String? = nil,
                adminIdentityDomainUserId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: InstanceLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                systemTags: [String: [String: JSONValue]],
                identityDomainWebAuthClientId: String? = nil,
                identityDomainWebAuthClientSecretVaultId: String? = nil,
                publicIp: String? = nil,
                serviceEndpoint: String? = nil,
                uiEndpoint: String? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.identityDomainUrl = identityDomainUrl
        self.adminIdentityDomainUserId = adminIdentityDomainUserId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.identityDomainWebAuthClientId = identityDomainWebAuthClientId
        self.identityDomainWebAuthClientSecretVaultId = identityDomainWebAuthClientSecretVaultId
        self.publicIp = publicIp
        self.serviceEndpoint = serviceEndpoint
        self.uiEndpoint = uiEndpoint
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Instance: CustomStringConvertible {
    public var description: String { "Instance()" }
}