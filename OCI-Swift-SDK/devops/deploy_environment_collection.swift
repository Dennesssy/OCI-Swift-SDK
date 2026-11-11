import Foundation
import OCICommon

// MARK: - DeployEnvironmentCollection

public struct DeployEnvironmentCollection: Codable, Sendable {

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

extension DeployEnvironmentCollection: CustomStringConvertible {
    public var description: String { "DeployEnvironmentCollection()" }
}