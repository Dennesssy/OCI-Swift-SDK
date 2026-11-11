import Foundation

// MARK: - ReplicateOracleDbAzureVaultRequest

public struct ReplicateOracleDbAzureVaultRequest: Codable, Sendable {
    public var oracleDbAzureVaultId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var replicateOracleDbAzureVaultDetails: ReplicateOracleDbAzureVaultDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureVaultId, ifMatch, opcRequestId, replicateOracleDbAzureVaultDetails
    }

    public init(
                oracleDbAzureVaultId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                replicateOracleDbAzureVaultDetails: ReplicateOracleDbAzureVaultDetails? = nil
    ) {
        self.oracleDbAzureVaultId = oracleDbAzureVaultId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.replicateOracleDbAzureVaultDetails = replicateOracleDbAzureVaultDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ReplicateOracleDbAzureVaultRequest: CustomStringConvertible {
    public var description: String { "ReplicateOracleDbAzureVaultRequest()" }
}

// MARK: - ReplicateOracleDbAzureVaultResponse

public struct ReplicateOracleDbAzureVaultResponse: Codable, Sendable {
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

extension ReplicateOracleDbAzureVaultResponse: CustomStringConvertible {
    public var description: String { "ReplicateOracleDbAzureVaultResponse()" }
}