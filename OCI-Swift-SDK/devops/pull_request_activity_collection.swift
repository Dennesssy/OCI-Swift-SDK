import Foundation
import OCICommon

// MARK: - PullRequestActivityCollection

public struct PullRequestActivityCollection: Codable, Sendable {

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

extension PullRequestActivityCollection: CustomStringConvertible {
    public var description: String { "PullRequestActivityCollection()" }
}