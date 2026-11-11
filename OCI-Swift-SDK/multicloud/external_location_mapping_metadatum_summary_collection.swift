import Foundation

// MARK: - ExternalLocationMappingMetadatumSummaryCollection

public struct ExternalLocationMappingMetadatumSummaryCollection: Codable, Sendable {

    public var items: [ExternalLocationMappingMetadatumSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ExternalLocationMappingMetadatumSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExternalLocationMappingMetadatumSummaryCollection: CustomStringConvertible {
    public var description: String { "ExternalLocationMappingMetadatumSummaryCollection()" }
}