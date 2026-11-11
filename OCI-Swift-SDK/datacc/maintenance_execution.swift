import Foundation
import OCICommon

// MARK: - MaintenanceExecution

public struct MaintenanceExecution: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var lifecycleState: MaintenanceRunLifecycleStateEnum
    public var compartmentId: String?
    public var description: String?
    public var lifecycleDetails: String?
    public var timeStarted: Date?
    public var timeEnded: Date?
    public var targetResourceType: TargetResourceTypeEnumEnum?
    public var infrastructureId: String?
    public var maintenanceRunId: String?
    public var maintenanceType: MaintenanceTypeEnumEnum?
    public var maintenanceSubtype: MaintenanceSubtypeEnumEnum?
    public var patchingMode: PatchingModeEnumEnum?
    public var sourceVersion: String?
    public var targetVersion: String?
    public var isCustomActionTimeoutEnabled: Bool?
    public var customActionTimeoutInMins: Int?
    public var workflowId: String?
    public var systemTags: [String: [String: JSONValue]]?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?
    public var totalTimeTakenInMins: Int?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, lifecycleState, compartmentId, description, lifecycleDetails, timeStarted, timeEnded, targetResourceType, infrastructureId, maintenanceRunId, maintenanceType, maintenanceSubtype, patchingMode, sourceVersion, targetVersion, isCustomActionTimeoutEnabled, customActionTimeoutInMins, workflowId, systemTags, definedTags, freeformTags, totalTimeTakenInMins
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                lifecycleState: MaintenanceRunLifecycleStateEnum,
                compartmentId: String? = nil,
                description: String? = nil,
                lifecycleDetails: String? = nil,
                timeStarted: Date? = nil,
                timeEnded: Date? = nil,
                targetResourceType: TargetResourceTypeEnumEnum? = nil,
                infrastructureId: String? = nil,
                maintenanceRunId: String? = nil,
                maintenanceType: MaintenanceTypeEnumEnum? = nil,
                maintenanceSubtype: MaintenanceSubtypeEnumEnum? = nil,
                patchingMode: PatchingModeEnumEnum? = nil,
                sourceVersion: String? = nil,
                targetVersion: String? = nil,
                isCustomActionTimeoutEnabled: Bool? = nil,
                customActionTimeoutInMins: Int? = nil,
                workflowId: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil,
                totalTimeTakenInMins: Int? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.lifecycleState = lifecycleState
        self.compartmentId = compartmentId
        self.description = description
        self.lifecycleDetails = lifecycleDetails
        self.timeStarted = timeStarted
        self.timeEnded = timeEnded
        self.targetResourceType = targetResourceType
        self.infrastructureId = infrastructureId
        self.maintenanceRunId = maintenanceRunId
        self.maintenanceType = maintenanceType
        self.maintenanceSubtype = maintenanceSubtype
        self.patchingMode = patchingMode
        self.sourceVersion = sourceVersion
        self.targetVersion = targetVersion
        self.isCustomActionTimeoutEnabled = isCustomActionTimeoutEnabled
        self.customActionTimeoutInMins = customActionTimeoutInMins
        self.workflowId = workflowId
        self.systemTags = systemTags
        self.definedTags = definedTags
        self.freeformTags = freeformTags
        self.totalTimeTakenInMins = totalTimeTakenInMins
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
