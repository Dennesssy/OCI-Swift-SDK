import Foundation
import OCICommon

// MARK: - PrivilegedApiControlSummary

public struct PrivilegedApiControlSummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var timeCreated: Date?
    public var lifecycleState: PrivilegedApiControlLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var resourceType: String?
    public var numberOfApprovers: Int?
    public var timeUpdated: Date?
    public var timeDeleted: Date?
    public var lifecycleDetails: String?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, timeCreated, lifecycleState, freeformTags, definedTags, resourceType, numberOfApprovers, timeUpdated, timeDeleted, lifecycleDetails, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: PrivilegedApiControlLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                resourceType: String? = nil,
                numberOfApprovers: Int? = nil,
                timeUpdated: Date? = nil,
                timeDeleted: Date? = nil,
                lifecycleDetails: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.resourceType = resourceType
        self.numberOfApprovers = numberOfApprovers
        self.timeUpdated = timeUpdated
        self.timeDeleted = timeDeleted
        self.lifecycleDetails = lifecycleDetails
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PrivilegedApiControlSummary: CustomStringConvertible {
    public var description: String { "PrivilegedApiControlSummary()" }
}