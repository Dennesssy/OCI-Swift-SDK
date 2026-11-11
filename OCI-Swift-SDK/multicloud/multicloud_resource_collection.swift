import Foundation

// MARK: - MulticloudResourceCollection

public struct MulticloudResourceCollection: Codable, Sendable {

    public var items: [MulticloudResourceSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [MulticloudResourceSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MulticloudResourceCollection: CustomStringConvertible {
    public var description: String { "MulticloudResourceCollection()" }
}