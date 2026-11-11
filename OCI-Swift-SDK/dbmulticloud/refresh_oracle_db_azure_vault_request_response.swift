import Foundation

// MARK: - RefreshOracleDbAzureVaultRequest

public struct RefreshOracleDbAzureVaultRequest: Codable, Sendable {
    public var oracleDbAzureVaultId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var refreshOracleDbAzureVaultDetails: RefreshOracleDbAzureVaultDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureVaultId, ifMatch, opcRequestId, refreshOracleDbAzureVaultDetails
    }

    public init(
                oracleDbAzureVaultId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                refreshOracleDbAzureVaultDetails: RefreshOracleDbAzureVaultDetails? = nil
    ) {
        self.oracleDbAzureVaultId = oracleDbAzureVaultId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.refreshOracleDbAzureVaultDetails = refreshOracleDbAzureVaultDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RefreshOracleDbAzureVaultRequest: CustomStringConvertible {
    public var description: String { "RefreshOracleDbAzureVaultRequest()" }
}

// MARK: - RefreshOracleDbAzureVaultResponse

public struct RefreshOracleDbAzureVaultResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcWorkRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcWorkRequestId
    }

    public init(
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RefreshOracleDbAzureVaultResponse: CustomStringConvertible {
    public var description: String { "RefreshOracleDbAzureVaultResponse()" }
}