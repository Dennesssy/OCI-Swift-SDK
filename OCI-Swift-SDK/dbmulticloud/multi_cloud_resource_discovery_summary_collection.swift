import Foundation

// MARK: - MultiCloudResourceDiscoverySummaryCollection

public struct MultiCloudResourceDiscoverySummaryCollection: Codable, Sendable {

    public var items: [MultiCloudResourceDiscoverySummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [MultiCloudResourceDiscoverySummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MultiCloudResourceDiscoverySummaryCollection: CustomStringConvertible {
    public var description: String { "MultiCloudResourceDiscoverySummaryCollection()" }
}