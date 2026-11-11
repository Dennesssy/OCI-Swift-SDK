import Foundation

// MARK: - ComputeInstanceGroupCanaryApprovalDeployStageExecutionProgress

public struct ComputeInstanceGroupCanaryApprovalDeployStageExecutionProgress: Codable, Sendable {

    public var deployStageDisplayName: String?
    public var deployStageId: String?
    public var timeStarted: Date?
    public var timeFinished: Date?
    public var deployStagePredecessors: DeployStagePredecessorCollection?
    public var deployStageExecutionProgressDetails: [DeployStageExecutionProgressDetails]?
    public var approvalActions: [ApprovalAction]?
    public var status: DeployStageExecutionProgressStatusEnum?

    private enum CodingKeys: String, CodingKey {
        case deployStageDisplayName, deployStageId, timeStarted, timeFinished, deployStagePredecessors, deployStageExecutionProgressDetails, approvalActions, status
    }

    public init(
                deployStageDisplayName: String? = nil,
                deployStageId: String? = nil,
                timeStarted: Date? = nil,
                timeFinished: Date? = nil,
                deployStagePredecessors: DeployStagePredecessorCollection? = nil,
                deployStageExecutionProgressDetails: [DeployStageExecutionProgressDetails]? = nil,
                approvalActions: [ApprovalAction]? = nil,
                status: DeployStageExecutionProgressStatusEnum? = nil
    ) {
        self.deployStageDisplayName = deployStageDisplayName
        self.deployStageId = deployStageId
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
        self.deployStagePredecessors = deployStagePredecessors
        self.deployStageExecutionProgressDetails = deployStageExecutionProgressDetails
        self.approvalActions = approvalActions
        self.status = status
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ComputeInstanceGroupCanaryApprovalDeployStageExecutionProgress: CustomStringConvertible {
    public var description: String { "ComputeInstanceGroupCanaryApprovalDeployStageExecutionProgress()" }
}