import Foundation

// MARK: - DeployArtifactOverrideArgument

public struct DeployArtifactOverrideArgument: Codable, Sendable {

    public var deployArtifactId: String?
    public var name: String?
    public var value: String?

    private enum CodingKeys: String, CodingKey {
        case deployArtifactId, name, value
    }

    public init(
                deployArtifactId: String? = nil,
                name: String? = nil,
                value: String? = nil
    ) {
        self.deployArtifactId = deployArtifactId
        self.name = name
        self.value = value
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeployArtifactOverrideArgument: CustomStringConvertible {
    public var description: String { "DeployArtifactOverrideArgument()" }
}