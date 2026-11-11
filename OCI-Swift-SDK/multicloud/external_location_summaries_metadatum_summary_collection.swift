import Foundation

// MARK: - ExternalLocationSummariesMetadatumSummaryCollection

public struct ExternalLocationSummariesMetadatumSummaryCollection: Codable, Sendable {

    public var items: [ExternalLocationSummariesMetadatumSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ExternalLocationSummariesMetadatumSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExternalLocationSummariesMetadatumSummaryCollection: CustomStringConvertible {
    public var description: String { "ExternalLocationSummariesMetadatumSummaryCollection()" }
}