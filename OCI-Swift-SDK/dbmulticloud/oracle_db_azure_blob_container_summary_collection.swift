import Foundation

// MARK: - OracleDbAzureBlobContainerSummaryCollection

public struct OracleDbAzureBlobContainerSummaryCollection: Codable, Sendable {

    public var items: [OracleDbAzureBlobContainerSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [OracleDbAzureBlobContainerSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OracleDbAzureBlobContainerSummaryCollection: CustomStringConvertible {
    public var description: String { "OracleDbAzureBlobContainerSummaryCollection()" }
}