import Foundation

// MARK: - CascadingDeleteOracleDbAzureVaultAssociationRequest

public struct CascadingDeleteOracleDbAzureVaultAssociationRequest: Codable, Sendable {
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

extension CascadingDeleteOracleDbAzureVaultAssociationRequest: CustomStringConvertible {
    public var description: String { "CascadingDeleteOracleDbAzureVaultAssociationRequest()" }
}

// MARK: - CascadingDeleteOracleDbAzureVaultAssociationResponse

public struct CascadingDeleteOracleDbAzureVaultAssociationResponse: Codable, Sendable {
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

extension CascadingDeleteOracleDbAzureVaultAssociationResponse: CustomStringConvertible {
    public var description: String { "CascadingDeleteOracleDbAzureVaultAssociationResponse()" }
}