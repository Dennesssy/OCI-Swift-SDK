import Foundation

// MARK: - ObjectStorageLinkCollection

public struct ObjectStorageLinkCollection: Codable, Sendable {

    public var items: [ObjectStorageLinkSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ObjectStorageLinkSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ObjectStorageLinkCollection: CustomStringConvertible {
    public var description: String { "ObjectStorageLinkCollection()" }
}