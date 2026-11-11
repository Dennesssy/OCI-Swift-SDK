import Foundation
import OCICommon

// MARK: - TriggerCollection

public struct TriggerCollection: Codable, Sendable {

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

extension TriggerCollection: CustomStringConvertible {
    public var description: String { "TriggerCollection()" }
}