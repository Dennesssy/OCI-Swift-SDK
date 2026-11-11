import Foundation

// MARK: - OkeBlueGreenDeployStageExecutionProgress

public struct OkeBlueGreenDeployStageExecutionProgress: Codable, Sendable {

    public var deployStageDisplayName: String?
    public var deployStageId: String?
    public var timeStarted: Date?
    public var timeFinished: Date?
    public var deployStagePredecessors: DeployStagePredecessorCollection?
    public var deployStageExecutionProgressDetails: [DeployStageExecutionProgressDetails]?
    public var namespace: String?
    public var status: DeployStageExecutionProgressStatusEnum?

    private enum CodingKeys: String, CodingKey {
        case deployStageDisplayName, deployStageId, timeStarted, timeFinished, deployStagePredecessors, deployStageExecutionProgressDetails, namespace, status
    }

    public init(
                deployStageDisplayName: String? = nil,
                deployStageId: String? = nil,
                timeStarted: Date? = nil,
                timeFinished: Date? = nil,
                deployStagePredecessors: DeployStagePredecessorCollection? = nil,
                deployStageExecutionProgressDetails: [DeployStageExecutionProgressDetails]? = nil,
                namespace: String? = nil,
                status: DeployStageExecutionProgressStatusEnum? = nil
    ) {
        self.deployStageDisplayName = deployStageDisplayName
        self.deployStageId = deployStageId
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
        self.deployStagePredecessors = deployStagePredecessors
        self.deployStageExecutionProgressDetails = deployStageExecutionProgressDetails
        self.namespace = namespace
        self.status = status
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OkeBlueGreenDeployStageExecutionProgress: CustomStringConvertible {
    public var description: String { "OkeBlueGreenDeployStageExecutionProgress()" }
}