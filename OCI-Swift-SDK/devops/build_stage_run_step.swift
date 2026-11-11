import Foundation

// MARK: - BuildStageRunStep

public struct BuildStageRunStep: Codable, Sendable {

    public var name: String?
    public var state: BuildStageRunStepStateEnum?
    public var timeStarted: Date?
    public var timeFinished: Date?

    private enum CodingKeys: String, CodingKey {
        case name, state, timeStarted, timeFinished
    }

    public init(
                name: String? = nil,
                state: BuildStageRunStepStateEnum? = nil,
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

extension BuildStageRunStep: CustomStringConvertible {
    public var description: String { "BuildStageRunStep()" }
}