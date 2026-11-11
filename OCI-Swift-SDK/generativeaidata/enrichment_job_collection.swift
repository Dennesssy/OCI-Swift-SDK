import Foundation

// MARK: - EnrichmentJobCollection

public struct EnrichmentJobCollection: Codable, Sendable {

    public var items: [EnrichmentJobSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [EnrichmentJobSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension EnrichmentJobCollection: CustomStringConvertible {
    public var description: String { "EnrichmentJobCollection()" }
}