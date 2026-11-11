import Foundation
import OCICommon

// MARK: - DatabaseToolsIdentityOracleDatabaseResourcePrincipal

public struct DatabaseToolsIdentityOracleDatabaseResourcePrincipal: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var displayName: String?
    public var databaseToolsConnectionId: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var credentialKey: String?
    public var lifecycleDetails: String?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?
    public var systemTags: [String: [String: JSONValue]]?
    public var lifecycleState: DatabaseToolsIdentityLifecycleStateEnum

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, displayName, databaseToolsConnectionId, timeCreated, timeUpdated, credentialKey, lifecycleDetails, definedTags, freeformTags, systemTags, lifecycleState
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                databaseToolsConnectionId: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                credentialKey: String? = nil,
                lifecycleDetails: String? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                lifecycleState: DatabaseToolsIdentityLifecycleStateEnum
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.databaseToolsConnectionId = databaseToolsConnectionId
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.credentialKey = credentialKey
        self.lifecycleDetails = lifecycleDetails
        self.definedTags = definedTags
        self.freeformTags = freeformTags
        self.systemTags = systemTags
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DatabaseToolsIdentityOracleDatabaseResourcePrincipal: CustomStringConvertible {
    public var description: String { "DatabaseToolsIdentityOracleDatabaseResourcePrincipal()" }
}