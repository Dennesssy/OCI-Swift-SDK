import Foundation

// MARK: - DeployPipelineEnvironmentCollection

public struct DeployPipelineEnvironmentCollection: Codable, Sendable {

    public var items: [DeployPipelineEnvironment]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DeployPipelineEnvironment]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeployPipelineEnvironmentCollection: CustomStringConvertible {
    public var description: String { "DeployPipelineEnvironmentCollection()" }
}