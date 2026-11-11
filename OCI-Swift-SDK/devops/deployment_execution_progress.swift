import Foundation
import OCICommon

// MARK: - DeploymentExecutionProgress

public struct DeploymentExecutionProgress: Codable, Sendable {

    public var timeStarted: Date?
    public var timeFinished: Date?
    public var deployStageExecutionProgress: [String: JSONValue]?

    private enum CodingKeys: String, CodingKey {
        case timeStarted, timeFinished, deployStageExecutionProgress
    }

    public init(
                timeStarted: Date? = nil,
                timeFinished: Date? = nil,
                deployStageExecutionProgress: [String: JSONValue]? = nil
    ) {
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
        self.deployStageExecutionProgress = deployStageExecutionProgress
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeploymentExecutionProgress: CustomStringConvertible {
    public var description: String { "DeploymentExecutionProgress()" }
}