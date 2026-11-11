import Foundation

// MARK: - deploystageexecutionprogress

public struct deploystageexecutionprogress: Codable, Sendable {

    public var jsonData: Data?
    public var deployStageDisplayName: String?
    public var deployStageId: String?
    public var timeStarted: Date?
    public var timeFinished: Date?
    public var status: DeployStageExecutionProgressStatusEnum?
    public var deployStagePredecessors: DeployStagePredecessorCollection?
    public var deployStageExecutionProgressDetails: [DeployStageExecutionProgressDetails]?
    public var deployStageType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, deployStageDisplayName, deployStageId, timeStarted, timeFinished, status, deployStagePredecessors, deployStageExecutionProgressDetails, deployStageType
    }

    public init(
                jsonData: Data? = nil,
                deployStageDisplayName: String? = nil,
                deployStageId: String? = nil,
                timeStarted: Date? = nil,
                timeFinished: Date? = nil,
                status: DeployStageExecutionProgressStatusEnum? = nil,
                deployStagePredecessors: DeployStagePredecessorCollection? = nil,
                deployStageExecutionProgressDetails: [DeployStageExecutionProgressDetails]? = nil,
                deployStageType: String? = nil
    ) {
        self.jsonData = jsonData
        self.deployStageDisplayName = deployStageDisplayName
        self.deployStageId = deployStageId
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
        self.status = status
        self.deployStagePredecessors = deployStagePredecessors
        self.deployStageExecutionProgressDetails = deployStageExecutionProgressDetails
        self.deployStageType = deployStageType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension deploystageexecutionprogress: CustomStringConvertible {
    public var description: String { "deploystageexecutionprogress()" }
}