import Foundation

// MARK: - ExternalLocationsMetadatumCollection

public struct ExternalLocationsMetadatumCollection: Codable, Sendable {

    public var items: [ExternalLocationsMetadatumSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ExternalLocationsMetadatumSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExternalLocationsMetadatumCollection: CustomStringConvertible {
    public var description: String { "ExternalLocationsMetadatumCollection()" }
}