import Foundation
import OCICommon

// MARK: - CreateComputeTaskDetails

public struct CreateComputeTaskDetails: Codable, Sendable {

    public var name: String?
    public var batchTaskEnvironmentId: String?
    public var description: String?
    public var entitlementClaims: [String]?
    public var dependencies: [String]?
    public var environmentVariables: [EnvironmentVariable]?
    public var batchTaskProfileId: String?
    public var command: [String]?
    public var arguments: [String]?
    public var fleetAssignmentPolicy: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case name, batchTaskEnvironmentId, description, entitlementClaims, dependencies, environmentVariables, batchTaskProfileId, command, arguments, fleetAssignmentPolicy
    }

    public init(
                name: String? = nil,
                batchTaskEnvironmentId: String? = nil,
                description: String? = nil,
                entitlementClaims: [String]? = nil,
                dependencies: [String]? = nil,
                environmentVariables: [EnvironmentVariable]? = nil,
                batchTaskProfileId: String? = nil,
                command: [String]? = nil,
                arguments: [String]? = nil,
                fleetAssignmentPolicy: JSONValue? = nil
    ) {
        self.name = name
        self.batchTaskEnvironmentId = batchTaskEnvironmentId
        self.description = description
        self.entitlementClaims = entitlementClaims
        self.dependencies = dependencies
        self.environmentVariables = environmentVariables
        self.batchTaskProfileId = batchTaskProfileId
        self.command = command
        self.arguments = arguments
        self.fleetAssignmentPolicy = fleetAssignmentPolicy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
