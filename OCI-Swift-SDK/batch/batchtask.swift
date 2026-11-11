import Foundation

// MARK: - batchtask

public struct batchtask: Codable, Sendable {

    public var jsonData: Data?
    public var hierarchicalName: String?
    public var groupTaskName: String?
    public var description: String?
    public var lifecycleState: BatchTaskLifecycleStateEnum?
    public var lifecycleDetails: String?
    public var id: String?
    public var name: String?
    public var entitlementClaims: [String]
    public var dependencies: [String]
    public var environmentVariables: [EnvironmentVariable]
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, hierarchicalName, groupTaskName, description, lifecycleState, lifecycleDetails, id, name, entitlementClaims, dependencies, environmentVariables, type
    }

    public init(
                jsonData: Data? = nil,
                hierarchicalName: String? = nil,
                groupTaskName: String? = nil,
                description: String? = nil,
                lifecycleState: BatchTaskLifecycleStateEnum? = nil,
                lifecycleDetails: String? = nil,
                id: String? = nil,
                name: String? = nil,
                entitlementClaims: [String],
                dependencies: [String],
                environmentVariables: [EnvironmentVariable],
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.hierarchicalName = hierarchicalName
        self.groupTaskName = groupTaskName
        self.description = description
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.id = id
        self.name = name
        self.entitlementClaims = entitlementClaims
        self.dependencies = dependencies
        self.environmentVariables = environmentVariables
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
