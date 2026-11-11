import Foundation
import OCICommon

// MARK: - UpdateOkeHelmChartDeployStageDetails

public struct UpdateOkeHelmChartDeployStageDetails: Codable, Sendable {

    public var description: String?
    public var displayName: String?
    public var deployStagePredecessorCollection: DeployStagePredecessorCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var okeClusterDeployEnvironmentId: String?
    public var helmChartDeployArtifactId: String?
    public var valuesArtifactIds: [String]?
    public var releaseName: String?
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
    public var purpose: UpdateOkeHelmChartDeployStageDetailsPurposeEnum?

    private enum CodingKeys: String, CodingKey {
        case description, displayName, deployStagePredecessorCollection, freeformTags, definedTags, okeClusterDeployEnvironmentId, helmChartDeployArtifactId, valuesArtifactIds, releaseName, isUninstallOnStageDelete, helmCommandArtifactIds, namespace, timeoutInSeconds, rollbackPolicy, setValues, setString, areHooksEnabled, shouldReuseValues, shouldResetValues, isForceEnabled, shouldCleanupOnFail, maxHistory, shouldSkipCrds, shouldSkipRenderSubchartNotes, shouldNotWait, isDebugEnabled, purpose
    }

    public init(
                description: String? = nil,
                displayName: String? = nil,
                deployStagePredecessorCollection: DeployStagePredecessorCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                okeClusterDeployEnvironmentId: String? = nil,
                helmChartDeployArtifactId: String? = nil,
                valuesArtifactIds: [String]? = nil,
                releaseName: String? = nil,
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
                purpose: UpdateOkeHelmChartDeployStageDetailsPurposeEnum? = nil
    ) {
        self.description = description
        self.displayName = displayName
        self.deployStagePredecessorCollection = deployStagePredecessorCollection
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.okeClusterDeployEnvironmentId = okeClusterDeployEnvironmentId
        self.helmChartDeployArtifactId = helmChartDeployArtifactId
        self.valuesArtifactIds = valuesArtifactIds
        self.releaseName = releaseName
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
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
