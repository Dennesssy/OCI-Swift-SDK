import Foundation

// MARK: - DeployStageOverrideArgumentCollection

public struct DeployStageOverrideArgumentCollection: Codable, Sendable {

    public var items: [DeployStageOverrideArgument]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DeployStageOverrideArgument]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeployStageOverrideArgumentCollection: CustomStringConvertible {
    public var description: String { "DeployStageOverrideArgumentCollection()" }
}