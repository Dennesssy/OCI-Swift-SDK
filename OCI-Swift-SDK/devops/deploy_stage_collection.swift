import Foundation
import OCICommon

// MARK: - DeployStageCollection

public struct DeployStageCollection: Codable, Sendable {

    public var items: [JSONValue]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [JSONValue]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeployStageCollection: CustomStringConvertible {
    public var description: String { "DeployStageCollection()" }
}