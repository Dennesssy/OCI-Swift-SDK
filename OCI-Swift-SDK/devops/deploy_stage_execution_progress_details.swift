import Foundation

// MARK: - DeployStageExecutionProgressDetails

public struct DeployStageExecutionProgressDetails: Codable, Sendable {

    public var targetId: String?
    public var targetGroup: String?
    public var steps: [DeployStageExecutionStep]?
    public var rollbackSteps: [DeployStageExecutionStep]?

    private enum CodingKeys: String, CodingKey {
        case targetId, targetGroup, steps, rollbackSteps
    }

    public init(
                targetId: String? = nil,
                targetGroup: String? = nil,
                steps: [DeployStageExecutionStep]? = nil,
                rollbackSteps: [DeployStageExecutionStep]? = nil
    ) {
        self.targetId = targetId
        self.targetGroup = targetGroup
        self.steps = steps
        self.rollbackSteps = rollbackSteps
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeployStageExecutionProgressDetails: CustomStringConvertible {
    public var description: String { "DeployStageExecutionProgressDetails()" }
}