import Foundation

// MARK: - OkeHelmChartDeploymentStageExecutionProgress

public struct OkeHelmChartDeploymentStageExecutionProgress: Codable, Sendable {

    public var deployStageDisplayName: String?
    public var deployStageId: String?
    public var timeStarted: Date?
    public var timeFinished: Date?
    public var deployStagePredecessors: DeployStagePredecessorCollection?
    public var deployStageExecutionProgressDetails: [DeployStageExecutionProgressDetails]?
    public var releaseName: String?
    public var chartUrl: String?
    public var version: String?
    public var namespace: String?
    public var helmDiff: String?
    public var status: DeployStageExecutionProgressStatusEnum?

    private enum CodingKeys: String, CodingKey {
        case deployStageDisplayName, deployStageId, timeStarted, timeFinished, deployStagePredecessors, deployStageExecutionProgressDetails, releaseName, chartUrl, version, namespace, helmDiff, status
    }

    public init(
                deployStageDisplayName: String? = nil,
                deployStageId: String? = nil,
                timeStarted: Date? = nil,
                timeFinished: Date? = nil,
                deployStagePredecessors: DeployStagePredecessorCollection? = nil,
                deployStageExecutionProgressDetails: [DeployStageExecutionProgressDetails]? = nil,
                releaseName: String? = nil,
                chartUrl: String? = nil,
                version: String? = nil,
                namespace: String? = nil,
                helmDiff: String? = nil,
                status: DeployStageExecutionProgressStatusEnum? = nil
    ) {
        self.deployStageDisplayName = deployStageDisplayName
        self.deployStageId = deployStageId
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
        self.deployStagePredecessors = deployStagePredecessors
        self.deployStageExecutionProgressDetails = deployStageExecutionProgressDetails
        self.releaseName = releaseName
        self.chartUrl = chartUrl
        self.version = version
        self.namespace = namespace
        self.helmDiff = helmDiff
        self.status = status
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OkeHelmChartDeploymentStageExecutionProgress: CustomStringConvertible {
    public var description: String { "OkeHelmChartDeploymentStageExecutionProgress()" }
}