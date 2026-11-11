import Foundation
import OCICommon

// MARK: - ComputeTaskExecutionDetails

public struct ComputeTaskExecutionDetails: Codable, Sendable {

    public var executionId: String?
    public var timeTransitionedToWaitingDependencies: Date?
    public var timeTransitionedToWaitingQueued: Date?
    public var timeStarted: Date?
    public var timeCompleted: Date?
    public var fleetShape: JSONValue?
    public var errors: [String]?
    public var completionLifecycleState: BatchTaskLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case executionId, timeTransitionedToWaitingDependencies, timeTransitionedToWaitingQueued, timeStarted, timeCompleted, fleetShape, errors, completionLifecycleState
    }

    public init(
                executionId: String? = nil,
                timeTransitionedToWaitingDependencies: Date? = nil,
                timeTransitionedToWaitingQueued: Date? = nil,
                timeStarted: Date? = nil,
                timeCompleted: Date? = nil,
                fleetShape: JSONValue? = nil,
                errors: [String]? = nil,
                completionLifecycleState: BatchTaskLifecycleStateEnum? = nil
    ) {
        self.executionId = executionId
        self.timeTransitionedToWaitingDependencies = timeTransitionedToWaitingDependencies
        self.timeTransitionedToWaitingQueued = timeTransitionedToWaitingQueued
        self.timeStarted = timeStarted
        self.timeCompleted = timeCompleted
        self.fleetShape = fleetShape
        self.errors = errors
        self.completionLifecycleState = completionLifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ComputeTaskExecutionDetails: CustomStringConvertible {
    public var description: String { "ComputeTaskExecutionDetails()" }
}