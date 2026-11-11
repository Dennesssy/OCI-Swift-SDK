import Foundation
import OCICommon

// MARK: - IotDomainGroup

public struct IotDomainGroup: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var type: IotDomainGroupTypeEnum
    public var displayName: String?
    public var lifecycleState: IotDomainGroupLifecycleStateEnum
    public var timeCreated: Date?
    public var description: String?
    public var dataHost: String?
    public var dbAllowListedVcnIds: [String]?
    public var dbConnectionString: String?
    public var dbTokenScope: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, type, displayName, lifecycleState, timeCreated, description, dataHost, dbAllowListedVcnIds, dbConnectionString, dbTokenScope, freeformTags, definedTags, systemTags, timeUpdated
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                type: IotDomainGroupTypeEnum,
                displayName: String? = nil,
                lifecycleState: IotDomainGroupLifecycleStateEnum,
                timeCreated: Date? = nil,
                description: String? = nil,
                dataHost: String? = nil,
                dbAllowListedVcnIds: [String]? = nil,
                dbConnectionString: String? = nil,
                dbTokenScope: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                timeUpdated: Date? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.type = type
        self.displayName = displayName
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.description = description
        self.dataHost = dataHost
        self.dbAllowListedVcnIds = dbAllowListedVcnIds
        self.dbConnectionString = dbConnectionString
        self.dbTokenScope = dbTokenScope
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
