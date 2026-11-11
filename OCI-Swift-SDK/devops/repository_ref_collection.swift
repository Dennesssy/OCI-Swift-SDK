import Foundation
import OCICommon

// MARK: - RepositoryRefCollection

public struct RepositoryRefCollection: Codable, Sendable {

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

extension RepositoryRefCollection: CustomStringConvertible {
    public var description: String { "RepositoryRefCollection()" }
}