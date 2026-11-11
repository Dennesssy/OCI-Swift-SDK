import Foundation
import OCICommon

// MARK: - RepositoryCollection

public struct RepositoryCollection: Codable, Sendable {

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

extension RepositoryCollection: CustomStringConvertible {
    public var description: String { "RepositoryCollection()" }
}