import Foundation

// MARK: - UpdateOracleDbAzureVaultRequest

public struct UpdateOracleDbAzureVaultRequest: Codable, Sendable {
    public var oracleDbAzureVaultId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateOracleDbAzureVaultDetails: UpdateOracleDbAzureVaultDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureVaultId, ifMatch, opcRequestId, updateOracleDbAzureVaultDetails
    }

    public init(
                oracleDbAzureVaultId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateOracleDbAzureVaultDetails: UpdateOracleDbAzureVaultDetails? = nil
    ) {
        self.oracleDbAzureVaultId = oracleDbAzureVaultId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateOracleDbAzureVaultDetails = updateOracleDbAzureVaultDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOracleDbAzureVaultRequest: CustomStringConvertible {
    public var description: String { "UpdateOracleDbAzureVaultRequest()" }
}

// MARK: - UpdateOracleDbAzureVaultResponse

public struct UpdateOracleDbAzureVaultResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOracleDbAzureVaultResponse: CustomStringConvertible {
    public var description: String { "UpdateOracleDbAzureVaultResponse()" }
}