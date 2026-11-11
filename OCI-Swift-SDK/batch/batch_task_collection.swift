import Foundation
import OCICommon

// MARK: - BatchTaskCollection

public struct BatchTaskCollection: Codable, Sendable {

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

extension BatchTaskCollection: CustomStringConvertible {
    public var description: String { "BatchTaskCollection()" }
}