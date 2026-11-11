import Foundation
import OCICommon

// MARK: - WlsDomainSummary

public struct WlsDomainSummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var lifecycleState: WlsDomainLifecycleStateEnum
    public var middlewareType: String?
    public var weblogicVersion: String?
    public var patchReadinessStatus: PatchReadinessStatusEnum?
    public var lifecycleDetails: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, lifecycleState, middlewareType, weblogicVersion, patchReadinessStatus, lifecycleDetails, timeCreated, timeUpdated, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                lifecycleState: WlsDomainLifecycleStateEnum,
                middlewareType: String? = nil,
                weblogicVersion: String? = nil,
                patchReadinessStatus: PatchReadinessStatusEnum? = nil,
                lifecycleDetails: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.middlewareType = middlewareType
        self.weblogicVersion = weblogicVersion
        self.patchReadinessStatus = patchReadinessStatus
        self.lifecycleDetails = lifecycleDetails
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WlsDomainSummary: CustomStringConvertible {
    public var description: String { "WlsDomainSummary()" }
}