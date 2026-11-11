import Foundation
import OCICommon

// MARK: - UsagePlanSummary

public struct UsagePlanSummary: Codable, Sendable {

    public var id: String?
    public var entitlements: [EntitlementSummary]
    public var compartmentId: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleState: UsagePlanLifecycleStateEnum
    public var displayName: String?
    public var lifecycleDetails: String?
    public var locks: [ResourceLock]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, entitlements, compartmentId, timeCreated, timeUpdated, lifecycleState, displayName, lifecycleDetails, locks, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                entitlements: [EntitlementSummary],
                compartmentId: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: UsagePlanLifecycleStateEnum,
                displayName: String? = nil,
                lifecycleDetails: String? = nil,
                locks: [ResourceLock]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.entitlements = entitlements
        self.compartmentId = compartmentId
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.lifecycleDetails = lifecycleDetails
        self.locks = locks
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UsagePlanSummary: CustomStringConvertible {
    public var description: String { "UsagePlanSummary()" }
}