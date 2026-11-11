import Foundation
import OCICommon

// MARK: - databasetoolsidentity

public struct databasetoolsidentity: Codable, Sendable {

    public var jsonData: Data?
    public var lifecycleDetails: String?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?
    public var systemTags: [String: [String: JSONValue]]?
    public var id: String?
    public var compartmentId: String?
    public var displayName: String?
    public var databaseToolsConnectionId: String?
    public var lifecycleState: DatabaseToolsIdentityLifecycleStateEnum
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, lifecycleDetails, definedTags, freeformTags, systemTags, id, compartmentId, displayName, databaseToolsConnectionId, lifecycleState, timeCreated, timeUpdated, type
    }

    public init(
                jsonData: Data? = nil,
                lifecycleDetails: String? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                id: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                databaseToolsConnectionId: String? = nil,
                lifecycleState: DatabaseToolsIdentityLifecycleStateEnum,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.lifecycleDetails = lifecycleDetails
        self.definedTags = definedTags
        self.freeformTags = freeformTags
        self.systemTags = systemTags
        self.id = id
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.databaseToolsConnectionId = databaseToolsConnectionId
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension databasetoolsidentity: CustomStringConvertible {
    public var description: String { "databasetoolsidentity()" }
}