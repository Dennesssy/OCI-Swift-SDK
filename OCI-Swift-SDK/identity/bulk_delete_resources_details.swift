import Foundation

// MARK: - BulkDeleteResourcesDetails

public struct BulkDeleteResourcesDetails: Codable, Sendable {

    public var resources: [BulkActionResource]

    private enum CodingKeys: String, CodingKey {
        case resources
    }

    public init(
                resources: [BulkActionResource]
    ) {
        self.resources = resources
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkDeleteResourcesDetails: CustomStringConvertible {
    public var description: String { "BulkDeleteResourcesDetails()" }
}