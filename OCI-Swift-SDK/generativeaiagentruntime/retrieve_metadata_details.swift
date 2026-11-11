import Foundation

// MARK: - RetrieveMetadataDetails

public struct RetrieveMetadataDetails: Codable, Sendable {

    public var filters: [MetadataFilter]?

    private enum CodingKeys: String, CodingKey {
        case filters
    }

    public init(
                filters: [MetadataFilter]? = nil
    ) {
        self.filters = filters
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RetrieveMetadataDetails: CustomStringConvertible {
    public var description: String { "RetrieveMetadataDetails()" }
}