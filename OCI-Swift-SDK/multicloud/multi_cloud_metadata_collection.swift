import Foundation

// MARK: - MultiCloudMetadataCollection

public struct MultiCloudMetadataCollection: Codable, Sendable {

    public var items: [MultiCloudMetadataSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [MultiCloudMetadataSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MultiCloudMetadataCollection: CustomStringConvertible {
    public var description: String { "MultiCloudMetadataCollection()" }
}