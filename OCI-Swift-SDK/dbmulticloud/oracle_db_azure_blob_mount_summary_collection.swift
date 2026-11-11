import Foundation

// MARK: - OracleDbAzureBlobMountSummaryCollection

public struct OracleDbAzureBlobMountSummaryCollection: Codable, Sendable {

    public var items: [OracleDbAzureBlobMountSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [OracleDbAzureBlobMountSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OracleDbAzureBlobMountSummaryCollection: CustomStringConvertible {
    public var description: String { "OracleDbAzureBlobMountSummaryCollection()" }
}