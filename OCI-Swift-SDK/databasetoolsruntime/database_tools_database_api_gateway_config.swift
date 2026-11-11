import Foundation
import OCICommon

// MARK: - DatabaseToolsDatabaseApiGatewayConfig

public struct DatabaseToolsDatabaseApiGatewayConfig: Codable, Sendable {

    public var id: String?
    public var type: DatabaseApiGatewayConfigTypeEnum
    public var compartmentId: String?
    public var displayName: String?
    public var lifecycleState: DatabaseToolsDatabaseApiGatewayConfigLifecycleStateEnum
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, type, compartmentId, displayName, lifecycleState, timeCreated, timeUpdated, lifecycleDetails, definedTags, freeformTags, systemTags
    }

    public init(
                id: String? = nil,
                type: DatabaseApiGatewayConfigTypeEnum,
                compartmentId: String? = nil,
                displayName: String? = nil,
                lifecycleState: DatabaseToolsDatabaseApiGatewayConfigLifecycleStateEnum,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.type = type
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.definedTags = definedTags
        self.freeformTags = freeformTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DatabaseToolsDatabaseApiGatewayConfig: CustomStringConvertible {
    public var description: String { "DatabaseToolsDatabaseApiGatewayConfig()" }
}