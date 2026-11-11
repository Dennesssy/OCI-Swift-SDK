import Foundation
import OCICommon

// MARK: - DatabaseToolsConnection

public struct DatabaseToolsConnection: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var lifecycleState: DatabaseToolsConnectionLifecycleStateEnum
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var type: ConnectionTypeEnum
    public var lifecycleDetails: String?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, lifecycleState, timeCreated, timeUpdated, type, lifecycleDetails, definedTags, freeformTags, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                lifecycleState: DatabaseToolsConnectionLifecycleStateEnum,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                type: ConnectionTypeEnum,
                lifecycleDetails: String? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.type = type
        self.lifecycleDetails = lifecycleDetails
        self.definedTags = definedTags
        self.freeformTags = freeformTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DatabaseToolsConnection: CustomStringConvertible {
    public var description: String { "DatabaseToolsConnection()" }
}