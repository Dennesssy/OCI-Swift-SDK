import Foundation
import OCICommon

// MARK: - BuildSourceCollection

public struct BuildSourceCollection: Codable, Sendable {

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

extension BuildSourceCollection: CustomStringConvertible {
    public var description: String { "BuildSourceCollection()" }
}