import Foundation

// MARK: - OracleDbAzureConnectorSummaryCollection

public struct OracleDbAzureConnectorSummaryCollection: Codable, Sendable {

    public var items: [OracleDbAzureConnectorSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [OracleDbAzureConnectorSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OracleDbAzureConnectorSummaryCollection: CustomStringConvertible {
    public var description: String { "OracleDbAzureConnectorSummaryCollection()" }
}