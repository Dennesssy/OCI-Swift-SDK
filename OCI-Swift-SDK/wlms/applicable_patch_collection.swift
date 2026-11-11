import Foundation

// MARK: - ApplicablePatchCollection

public struct ApplicablePatchCollection: Codable, Sendable {

    public var items: [ApplicablePatchSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ApplicablePatchSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApplicablePatchCollection: CustomStringConvertible {
    public var description: String { "ApplicablePatchCollection()" }
}