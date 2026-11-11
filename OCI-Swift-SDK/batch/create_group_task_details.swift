import Foundation
import OCICommon

// MARK: - CreateGroupTaskDetails

public struct CreateGroupTaskDetails: Codable, Sendable {

    public var name: String?
    public var tasks: [JSONValue]
    public var description: String?
    public var entitlementClaims: [String]?
    public var dependencies: [String]?
    public var environmentVariables: [EnvironmentVariable]?

    private enum CodingKeys: String, CodingKey {
        case name, tasks, description, entitlementClaims, dependencies, environmentVariables
    }

    public init(
                name: String? = nil,
                tasks: [JSONValue],
                description: String? = nil,
                entitlementClaims: [String]? = nil,
                dependencies: [String]? = nil,
                environmentVariables: [EnvironmentVariable]? = nil
    ) {
        self.name = name
        self.tasks = tasks
        self.description = description
        self.entitlementClaims = entitlementClaims
        self.dependencies = dependencies
        self.environmentVariables = environmentVariables
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
