import Foundation
import OCICommon

// MARK: - DblmPatchManagement

public struct DblmPatchManagement: Codable, Sendable {

    public var compartmentId: String?
    public var resources: [ResourceInfo]?
    public var message: String?
    public var timeEnabled: Date?
    public var lifecycleState: DblmPatchManagementLifecycleStateEnum?
    public var patchOperationsSummary: JSONValue?
    public var imagesPatchRecommendationSummary: JSONValue?
    public var resourcesPatchComplianceSummary: JSONValue?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, resources, message, timeEnabled, lifecycleState, patchOperationsSummary, imagesPatchRecommendationSummary, resourcesPatchComplianceSummary, freeformTags, definedTags, systemTags
    }

    public init(
                compartmentId: String? = nil,
                resources: [ResourceInfo]? = nil,
                message: String? = nil,
                timeEnabled: Date? = nil,
                lifecycleState: DblmPatchManagementLifecycleStateEnum? = nil,
                patchOperationsSummary: JSONValue? = nil,
                imagesPatchRecommendationSummary: JSONValue? = nil,
                resourcesPatchComplianceSummary: JSONValue? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.resources = resources
        self.message = message
        self.timeEnabled = timeEnabled
        self.lifecycleState = lifecycleState
        self.patchOperationsSummary = patchOperationsSummary
        self.imagesPatchRecommendationSummary = imagesPatchRecommendationSummary
        self.resourcesPatchComplianceSummary = resourcesPatchComplianceSummary
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DblmPatchManagement: CustomStringConvertible {
    public var description: String { "DblmPatchManagement()" }
}