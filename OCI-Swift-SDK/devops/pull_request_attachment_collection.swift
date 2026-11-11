import Foundation

// MARK: - PullRequestAttachmentCollection

public struct PullRequestAttachmentCollection: Codable, Sendable {

    public var items: [PullRequestAttachmentSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [PullRequestAttachmentSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PullRequestAttachmentCollection: CustomStringConvertible {
    public var description: String { "PullRequestAttachmentCollection()" }
}