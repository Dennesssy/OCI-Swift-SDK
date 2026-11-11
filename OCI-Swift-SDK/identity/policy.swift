import Foundation
import OCICommon

// MARK: - Policy

public struct Policy: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var name: String?
    public var statements: [String]
    public var description: String?
    public var timeCreated: Date?
    public var lifecycleState: PolicyLifecycleStateEnum
    public var inactiveStatus: Int64?
    public var versionDate: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, name, statements, description, timeCreated, lifecycleState, inactiveStatus, versionDate, freeformTags, definedTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                name: String? = nil,
                statements: [String],
                description: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: PolicyLifecycleStateEnum,
                inactiveStatus: Int64? = nil,
                versionDate: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.name = name
        self.statements = statements
        self.description = description
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.inactiveStatus = inactiveStatus
        self.versionDate = versionDate
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
