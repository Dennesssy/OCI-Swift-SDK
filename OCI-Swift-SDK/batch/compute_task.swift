import Foundation
import OCICommon

// MARK: - ComputeTask

public struct ComputeTask: Codable, Sendable {

    public var id: String?
    public var name: String?
    public var entitlementClaims: [String]
    public var dependencies: [String]
    public var environmentVariables: [EnvironmentVariable]
    public var batchTaskEnvironmentId: String?
    public var hierarchicalName: String?
    public var groupTaskName: String?
    public var description: String?
    public var lifecycleDetails: String?
    public var batchTaskProfileId: String?
    public var command: [String]?
    public var arguments: [String]?
    public var fleetAssignmentPolicy: JSONValue?
    public var mostRecentExecutionHistory: [JSONValue]?
    public var lifecycleState: BatchTaskLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case id, name, entitlementClaims, dependencies, environmentVariables, batchTaskEnvironmentId, hierarchicalName, groupTaskName, description, lifecycleDetails, batchTaskProfileId, command, arguments, fleetAssignmentPolicy, mostRecentExecutionHistory, lifecycleState
    }

    public init(
                id: String? = nil,
                name: String? = nil,
                entitlementClaims: [String],
                dependencies: [String],
                environmentVariables: [EnvironmentVariable],
                batchTaskEnvironmentId: String? = nil,
                hierarchicalName: String? = nil,
                groupTaskName: String? = nil,
                description: String? = nil,
                lifecycleDetails: String? = nil,
                batchTaskProfileId: String? = nil,
                command: [String]? = nil,
                arguments: [String]? = nil,
                fleetAssignmentPolicy: JSONValue? = nil,
                mostRecentExecutionHistory: [JSONValue]? = nil,
                lifecycleState: BatchTaskLifecycleStateEnum? = nil
    ) {
        self.id = id
        self.name = name
        self.entitlementClaims = entitlementClaims
        self.dependencies = dependencies
        self.environmentVariables = environmentVariables
        self.batchTaskEnvironmentId = batchTaskEnvironmentId
        self.hierarchicalName = hierarchicalName
        self.groupTaskName = groupTaskName
        self.description = description
        self.lifecycleDetails = lifecycleDetails
        self.batchTaskProfileId = batchTaskProfileId
        self.command = command
        self.arguments = arguments
        self.fleetAssignmentPolicy = fleetAssignmentPolicy
        self.mostRecentExecutionHistory = mostRecentExecutionHistory
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
