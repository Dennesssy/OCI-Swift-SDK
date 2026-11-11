import Foundation

// MARK: - DeployStageOverrideArgument

public struct DeployStageOverrideArgument: Codable, Sendable {

    public var deployStageId: String?
    public var name: String?
    public var value: String?

    private enum CodingKeys: String, CodingKey {
        case deployStageId, name, value
    }

    public init(
                deployStageId: String? = nil,
                name: String? = nil,
                value: String? = nil
    ) {
        self.deployStageId = deployStageId
        self.name = name
        self.value = value
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeployStageOverrideArgument: CustomStringConvertible {
    public var description: String { "DeployStageOverrideArgument()" }
}