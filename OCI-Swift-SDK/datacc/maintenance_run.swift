import Foundation
import OCICommon

// MARK: - MaintenanceRun

public struct MaintenanceRun: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var displayName: String?
    public var lifecycleState: MaintenanceRunLifecycleStateEnum
    public var timeScheduled: Date?
    public var description: String?
    public var lifecycleDetails: String?
    public var initialScheduledTime: Date?
    public var timeStarted: Date?
    public var timeEnded: Date?
    public var targetResourceType: TargetResourceTypeEnumEnum?
    public var infrastructureId: String?
    public var maintenanceType: MaintenanceTypeEnumEnum?
    public var patchIdentifier: String?
    public var maintenanceSubtype: MaintenanceSubtypeEnumEnum?
    public var patchingMode: PatchingModeEnumEnum?
    public var patchFailureCount: Int?
    public var sourceVersion: String?
    public var targetVersion: String?
    public var isCustomActionTimeoutEnabled: Bool?
    public var customActionTimeoutInMins: Int?
    public var patchingStatus: PatchingStatusEnumEnum?
    public var patchingStartTime: Date?
    public var patchingEndTime: Date?
    public var estimatedPatchingTime: Int?
    public var currentPatchingComponent: String?
    public var estimatedComponentPatchingStartTime: Date?
    public var systemTags: [String: [String: JSONValue]]?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?
    public var totalTimeTakenInMins: Int?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, displayName, lifecycleState, timeScheduled, description, lifecycleDetails, initialScheduledTime, timeStarted, timeEnded, targetResourceType, infrastructureId, maintenanceType, patchIdentifier, maintenanceSubtype, patchingMode, patchFailureCount, sourceVersion, targetVersion, isCustomActionTimeoutEnabled, customActionTimeoutInMins, patchingStatus, patchingStartTime, patchingEndTime, estimatedPatchingTime, currentPatchingComponent, estimatedComponentPatchingStartTime, systemTags, definedTags, freeformTags, totalTimeTakenInMins
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                lifecycleState: MaintenanceRunLifecycleStateEnum,
                timeScheduled: Date? = nil,
                description: String? = nil,
                lifecycleDetails: String? = nil,
                initialScheduledTime: Date? = nil,
                timeStarted: Date? = nil,
                timeEnded: Date? = nil,
                targetResourceType: TargetResourceTypeEnumEnum? = nil,
                infrastructureId: String? = nil,
                maintenanceType: MaintenanceTypeEnumEnum? = nil,
                patchIdentifier: String? = nil,
                maintenanceSubtype: MaintenanceSubtypeEnumEnum? = nil,
                patchingMode: PatchingModeEnumEnum? = nil,
                patchFailureCount: Int? = nil,
                sourceVersion: String? = nil,
                targetVersion: String? = nil,
                isCustomActionTimeoutEnabled: Bool? = nil,
                customActionTimeoutInMins: Int? = nil,
                patchingStatus: PatchingStatusEnumEnum? = nil,
                patchingStartTime: Date? = nil,
                patchingEndTime: Date? = nil,
                estimatedPatchingTime: Int? = nil,
                currentPatchingComponent: String? = nil,
                estimatedComponentPatchingStartTime: Date? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil,
                totalTimeTakenInMins: Int? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.lifecycleState = lifecycleState
        self.timeScheduled = timeScheduled
        self.description = description
        self.lifecycleDetails = lifecycleDetails
        self.initialScheduledTime = initialScheduledTime
        self.timeStarted = timeStarted
        self.timeEnded = timeEnded
        self.targetResourceType = targetResourceType
        self.infrastructureId = infrastructureId
        self.maintenanceType = maintenanceType
        self.patchIdentifier = patchIdentifier
        self.maintenanceSubtype = maintenanceSubtype
        self.patchingMode = patchingMode
        self.patchFailureCount = patchFailureCount
        self.sourceVersion = sourceVersion
        self.targetVersion = targetVersion
        self.isCustomActionTimeoutEnabled = isCustomActionTimeoutEnabled
        self.customActionTimeoutInMins = customActionTimeoutInMins
        self.patchingStatus = patchingStatus
        self.patchingStartTime = patchingStartTime
        self.patchingEndTime = patchingEndTime
        self.estimatedPatchingTime = estimatedPatchingTime
        self.currentPatchingComponent = currentPatchingComponent
        self.estimatedComponentPatchingStartTime = estimatedComponentPatchingStartTime
        self.systemTags = systemTags
        self.definedTags = definedTags
        self.freeformTags = freeformTags
        self.totalTimeTakenInMins = totalTimeTakenInMins
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
