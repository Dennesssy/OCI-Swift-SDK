import Foundation

// MARK: - DeleteOracleDbAzureVaultAssociationRequest

public struct DeleteOracleDbAzureVaultAssociationRequest: Codable, Sendable {
    public var oracleDbAzureVaultAssociationId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureVaultAssociationId, ifMatch, opcRequestId
    }

    public init(
                oracleDbAzureVaultAssociationId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbAzureVaultAssociationId = oracleDbAzureVaultAssociationId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteOracleDbAzureVaultAssociationRequest: CustomStringConvertible {
    public var description: String { "DeleteOracleDbAzureVaultAssociationRequest()" }
}

// MARK: - DeleteOracleDbAzureVaultAssociationResponse

public struct DeleteOracleDbAzureVaultAssociationResponse: Codable, Sendable {
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

extension DeleteOracleDbAzureVaultAssociationResponse: CustomStringConvertible {
    public var description: String { "DeleteOracleDbAzureVaultAssociationResponse()" }
}