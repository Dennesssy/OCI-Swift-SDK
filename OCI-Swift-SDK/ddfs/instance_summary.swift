import Foundation
import OCICommon

// MARK: - InstanceSummary

public struct InstanceSummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var idcsUrl: String?
    public var timeCreated: Date?
    public var lifecycleState: InstanceLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, idcsUrl, timeCreated, lifecycleState, freeformTags, definedTags, timeUpdated, lifecycleDetails, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                idcsUrl: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: InstanceLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.idcsUrl = idcsUrl
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension InstanceSummary: CustomStringConvertible {
    public var description: String { "InstanceSummary()" }
}