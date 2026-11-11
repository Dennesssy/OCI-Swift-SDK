import Foundation
import OCICommon

// MARK: - PatchPullRequestDetails

public struct PatchPullRequestDetails: Codable, Sendable {

    public var items: [JSONValue]?

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [JSONValue]? = nil
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PatchPullRequestDetails: CustomStringConvertible {
    public var description: String { "PatchPullRequestDetails()" }
}