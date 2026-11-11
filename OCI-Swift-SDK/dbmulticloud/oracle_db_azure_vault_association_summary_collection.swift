import Foundation

// MARK: - OracleDbAzureVaultAssociationSummaryCollection

public struct OracleDbAzureVaultAssociationSummaryCollection: Codable, Sendable {

    public var items: [OracleDbAzureVaultAssociationSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [OracleDbAzureVaultAssociationSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OracleDbAzureVaultAssociationSummaryCollection: CustomStringConvertible {
    public var description: String { "OracleDbAzureVaultAssociationSummaryCollection()" }
}