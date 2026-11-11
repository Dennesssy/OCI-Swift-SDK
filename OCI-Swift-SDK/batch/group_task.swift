import Foundation

// MARK: - GroupTask

public struct GroupTask: Codable, Sendable {

    public var id: String?
    public var name: String?
    public var entitlementClaims: [String]
    public var dependencies: [String]
    public var environmentVariables: [EnvironmentVariable]
    public var hierarchicalName: String?
    public var groupTaskName: String?
    public var description: String?
    public var lifecycleDetails: String?
    public var tasks: [String]?
    public var lifecycleState: BatchTaskLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case id, name, entitlementClaims, dependencies, environmentVariables, hierarchicalName, groupTaskName, description, lifecycleDetails, tasks, lifecycleState
    }

    public init(
                id: String? = nil,
                name: String? = nil,
                entitlementClaims: [String],
                dependencies: [String],
                environmentVariables: [EnvironmentVariable],
                hierarchicalName: String? = nil,
                groupTaskName: String? = nil,
                description: String? = nil,
                lifecycleDetails: String? = nil,
                tasks: [String]? = nil,
                lifecycleState: BatchTaskLifecycleStateEnum? = nil
    ) {
        self.id = id
        self.name = name
        self.entitlementClaims = entitlementClaims
        self.dependencies = dependencies
        self.environmentVariables = environmentVariables
        self.hierarchicalName = hierarchicalName
        self.groupTaskName = groupTaskName
        self.description = description
        self.lifecycleDetails = lifecycleDetails
        self.tasks = tasks
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
