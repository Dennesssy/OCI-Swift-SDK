import Foundation
import OCICommon

// MARK: - ConnectionCollection

public struct ConnectionCollection: Codable, Sendable {

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

extension ConnectionCollection: CustomStringConvertible {
    public var description: String { "ConnectionCollection()" }
}