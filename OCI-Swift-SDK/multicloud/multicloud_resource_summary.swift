import Foundation
import OCICommon

// MARK: - MulticloudResourceSummary

public struct MulticloudResourceSummary: Codable, Sendable {

    public var resourceId: String?
    public var timeCreated: Date?
    public var resourceDisplayName: String?
    public var resourceType: String?
    public var compartmentName: String?
    public var compartmentId: String?
    public var vcnName: String?
    public var vcnId: String?
    public var networkAnchorName: String?
    public var networkAnchorId: String?
    public var cspResourceId: String?
    public var cspAdditionalProperties: [String: String]?
    public var resourceAdditionalProperties: [String: JSONValue]?
    public var timeUpdated: Date?
    public var lifecycleState: MulticloudResourceSummaryLifecycleStateEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case resourceId, timeCreated, resourceDisplayName, resourceType, compartmentName, compartmentId, vcnName, vcnId, networkAnchorName, networkAnchorId, cspResourceId, cspAdditionalProperties, resourceAdditionalProperties, timeUpdated, lifecycleState, freeformTags, definedTags, systemTags
    }

    public init(
                resourceId: String? = nil,
                timeCreated: Date? = nil,
                resourceDisplayName: String? = nil,
                resourceType: String? = nil,
                compartmentName: String? = nil,
                compartmentId: String? = nil,
                vcnName: String? = nil,
                vcnId: String? = nil,
                networkAnchorName: String? = nil,
                networkAnchorId: String? = nil,
                cspResourceId: String? = nil,
                cspAdditionalProperties: [String: String]? = nil,
                resourceAdditionalProperties: [String: JSONValue]? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: MulticloudResourceSummaryLifecycleStateEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.resourceId = resourceId
        self.timeCreated = timeCreated
        self.resourceDisplayName = resourceDisplayName
        self.resourceType = resourceType
        self.compartmentName = compartmentName
        self.compartmentId = compartmentId
        self.vcnName = vcnName
        self.vcnId = vcnId
        self.networkAnchorName = networkAnchorName
        self.networkAnchorId = networkAnchorId
        self.cspResourceId = cspResourceId
        self.cspAdditionalProperties = cspAdditionalProperties
        self.resourceAdditionalProperties = resourceAdditionalProperties
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MulticloudResourceSummary: CustomStringConvertible {
    public var description: String { "MulticloudResourceSummary()" }
}