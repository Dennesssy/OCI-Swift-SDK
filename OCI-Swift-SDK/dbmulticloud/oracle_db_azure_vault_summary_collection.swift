import Foundation

// MARK: - OracleDbAzureVaultSummaryCollection

public struct OracleDbAzureVaultSummaryCollection: Codable, Sendable {

    public var items: [OracleDbAzureVaultSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [OracleDbAzureVaultSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OracleDbAzureVaultSummaryCollection: CustomStringConvertible {
    public var description: String { "OracleDbAzureVaultSummaryCollection()" }
}