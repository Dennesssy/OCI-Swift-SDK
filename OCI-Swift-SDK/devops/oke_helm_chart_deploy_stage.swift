import Foundation
import OCICommon

// MARK: - OkeHelmChartDeployStage

public struct OkeHelmChartDeployStage: Codable, Sendable {

    public var id: String?
    public var projectId: String?
    public var deployPipelineId: String?
    public var compartmentId: String?
    public var okeClusterDeployEnvironmentId: String?
    public var helmChartDeployArtifactId: String?
    public var releaseName: String?
    public var description: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var valuesArtifactIds: [String]?
    public var isUninstallOnStageDelete: Bool?
    public var helmCommandArtifactIds: [String]?
    public var namespace: String?
    public var timeoutInSeconds: Int?
    public var rollbackPolicy: JSONValue?
    public var setValues: HelmSetValueCollection?
    public var setString: HelmSetValueCollection?
    public var areHooksEnabled: Bool?
    public var shouldReuseValues: Bool?
    public var shouldResetValues: Bool?
    public var isForceEnabled: Bool?
    public var shouldCleanupOnFail: Bool?
    public var maxHistory: Int?
    public var shouldSkipCrds: Bool?
    public var shouldSkipRenderSubchartNotes: Bool?
    public var shouldNotWait: Bool?
    public var isDebugEnabled: Bool?
    public var purpose: OkeHelmChartDeployStagePurposeEnum?
    public var lifecycleState: DeployStageLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case id, projectId, deployPipelineId, compartmentId, okeClusterDeployEnvironmentId, helmChartDeployArtifactId, releaseName, description, displayName, timeCreated, timeUpdated, lifecycleDetails, deployStagePredecessorCollection, freeformTags, definedTags, systemTags, valuesArtifactIds, isUninstallOnStageDelete, helmCommandArtifactIds, namespace, timeoutInSeconds, rollbackPolicy, setValues, setString, areHooksEnabled, shouldReuseValues, shouldResetValues, isForceEnabled, shouldCleanupOnFail, maxHistory, shouldSkipCrds, shouldSkipRenderSubchartNotes, shouldNotWait, isDebugEnabled, purpose, lifecycleState
    }

    public init(
                id: String? = nil,
                projectId: String? = nil,
                deployPipelineId: String? = nil,
                compartmentId: String? = nil,
                okeClusterDeployEnvironmentId: String? = nil,
                helmChartDeployArtifactId: String? = nil,
                releaseName: String? = nil,
                description: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                valuesArtifactIds: [String]? = nil,
                isUninstallOnStageDelete: Bool? = nil,
                helmCommandArtifactIds: [String]? = nil,
                namespace: String? = nil,
                timeoutInSeconds: Int? = nil,
                rollbackPolicy: JSONValue? = nil,
                setValues: HelmSetValueCollection? = nil,
                setString: HelmSetValueCollection? = nil,
                areHooksEnabled: Bool? = nil,
                shouldReuseValues: Bool? = nil,
                shouldResetValues: Bool? = nil,
                isForceEnabled: Bool? = nil,
                shouldCleanupOnFail: Bool? = nil,
                maxHistory: Int? = nil,
                shouldSkipCrds: Bool? = nil,
                shouldSkipRenderSubchartNotes: Bool? = nil,
                shouldNotWait: Bool? = nil,
                isDebugEnabled: Bool? = nil,
                purpose: OkeHelmChartDeployStagePurposeEnum? = nil,
                lifecycleState: DeployStageLifecycleStateEnum? = nil
    ) {
        self.id = id
        self.projectId = projectId
        self.deployPipelineId = deployPipelineId
        self.compartmentId = compartmentId
        self.okeClusterDeployEnvironmentId = okeClusterDeployEnvironmentId
        self.helmChartDeployArtifactId = helmChartDeployArtifactId
        self.releaseName = releaseName
        self.description = description
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.valuesArtifactIds = valuesArtifactIds
        self.isUninstallOnStageDelete = isUninstallOnStageDelete
        self.helmCommandArtifactIds = helmCommandArtifactIds
        self.namespace = namespace
        self.timeoutInSeconds = timeoutInSeconds
        self.rollbackPolicy = rollbackPolicy
        self.setValues = setValues
        self.setString = setString
        self.areHooksEnabled = areHooksEnabled
        self.shouldReuseValues = shouldReuseValues
        self.shouldResetValues = shouldResetValues
        self.isForceEnabled = isForceEnabled
        self.shouldCleanupOnFail = shouldCleanupOnFail
        self.maxHistory = maxHistory
        self.shouldSkipCrds = shouldSkipCrds
        self.shouldSkipRenderSubchartNotes = shouldSkipRenderSubchartNotes
        self.shouldNotWait = shouldNotWait
        self.isDebugEnabled = isDebugEnabled
        self.purpose = purpose
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
