import Foundation

// MARK: - DeployStageExecutionStep

public struct DeployStageExecutionStep: Codable, Sendable {

    public var name: String?
    public var state: DeployStageExecutionStepStateEnum?
    public var timeStarted: Date?
    public var timeFinished: Date?

    private enum CodingKeys: String, CodingKey {
        case name, state, timeStarted, timeFinished
    }

    public init(
                name: String? = nil,
                state: DeployStageExecutionStepStateEnum? = nil,
                timeStarted: Date? = nil,
                timeFinished: Date? = nil
    ) {
        self.name = name
        self.state = state
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeployStageExecutionStep: CustomStringConvertible {
    public var description: String { "DeployStageExecutionStep()" }
}