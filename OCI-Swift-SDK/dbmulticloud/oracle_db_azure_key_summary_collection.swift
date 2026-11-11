import Foundation

// MARK: - OracleDbAzureKeySummaryCollection

public struct OracleDbAzureKeySummaryCollection: Codable, Sendable {

    public var items: [OracleDbAzureKeySummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [OracleDbAzureKeySummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OracleDbAzureKeySummaryCollection: CustomStringConvertible {
    public var description: String { "OracleDbAzureKeySummaryCollection()" }
}