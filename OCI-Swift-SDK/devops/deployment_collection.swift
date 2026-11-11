import Foundation
import OCICommon

// MARK: - DeploymentCollection

public struct DeploymentCollection: Codable, Sendable {

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

extension DeploymentCollection: CustomStringConvertible {
    public var description: String { "DeploymentCollection()" }
}