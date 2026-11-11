import Foundation
import OCICommon

// MARK: - IotDomain

public struct IotDomain: Codable, Sendable {

    public var id: String?
    public var iotDomainGroupId: String?
    public var compartmentId: String?
    public var displayName: String?
    public var lifecycleState: IotDomainLifecycleStateEnum
    public var timeCreated: Date?
    public var description: String?
    public var deviceHost: String?
    public var dbAllowListedIdentityGroupNames: [String]?
    public var dbAllowedIdentityDomainHost: String?
    public var dataRetentionPeriodsInDays: DataRetentionPeriodsInDays?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case id, iotDomainGroupId, compartmentId, displayName, lifecycleState, timeCreated, description, deviceHost, dbAllowListedIdentityGroupNames, dbAllowedIdentityDomainHost, dataRetentionPeriodsInDays, freeformTags, definedTags, systemTags, timeUpdated
    }

    public init(
                id: String? = nil,
                iotDomainGroupId: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                lifecycleState: IotDomainLifecycleStateEnum,
                timeCreated: Date? = nil,
                description: String? = nil,
                deviceHost: String? = nil,
                dbAllowListedIdentityGroupNames: [String]? = nil,
                dbAllowedIdentityDomainHost: String? = nil,
                dataRetentionPeriodsInDays: DataRetentionPeriodsInDays? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                timeUpdated: Date? = nil
    ) {
        self.id = id
        self.iotDomainGroupId = iotDomainGroupId
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.description = description
        self.deviceHost = deviceHost
        self.dbAllowListedIdentityGroupNames = dbAllowListedIdentityGroupNames
        self.dbAllowedIdentityDomainHost = dbAllowedIdentityDomainHost
        self.dataRetentionPeriodsInDays = dataRetentionPeriodsInDays
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
