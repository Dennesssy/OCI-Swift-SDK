import Foundation

// MARK: - RefreshOracleDbAzureVaultDetails

public struct RefreshOracleDbAzureVaultDetails: Codable, Sendable {

    public var oracleDbAzureConnectorId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureConnectorId
    }

    public init(
                oracleDbAzureConnectorId: String? = nil
    ) {
        self.oracleDbAzureConnectorId = oracleDbAzureConnectorId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RefreshOracleDbAzureVaultDetails: CustomStringConvertible {
    public var description: String { "RefreshOracleDbAzureVaultDetails()" }
}