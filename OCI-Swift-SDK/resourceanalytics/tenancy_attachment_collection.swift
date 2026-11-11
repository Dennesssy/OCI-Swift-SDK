import Foundation

// MARK: - TenancyAttachmentCollection

public struct TenancyAttachmentCollection: Codable, Sendable {

    public var items: [TenancyAttachmentSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [TenancyAttachmentSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension TenancyAttachmentCollection: CustomStringConvertible {
    public var description: String { "TenancyAttachmentCollection()" }
}