import Foundation

// MARK: - UpdateOracleDbAzureVaultAssociationRequest

public struct UpdateOracleDbAzureVaultAssociationRequest: Codable, Sendable {
    public var oracleDbAzureVaultAssociationId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateOracleDbAzureVaultAssociationDetails: UpdateOracleDbAzureVaultAssociationDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureVaultAssociationId, ifMatch, opcRequestId, updateOracleDbAzureVaultAssociationDetails
    }

    public init(
                oracleDbAzureVaultAssociationId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateOracleDbAzureVaultAssociationDetails: UpdateOracleDbAzureVaultAssociationDetails? = nil
    ) {
        self.oracleDbAzureVaultAssociationId = oracleDbAzureVaultAssociationId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateOracleDbAzureVaultAssociationDetails = updateOracleDbAzureVaultAssociationDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOracleDbAzureVaultAssociationRequest: CustomStringConvertible {
    public var description: String { "UpdateOracleDbAzureVaultAssociationRequest()" }
}

// MARK: - UpdateOracleDbAzureVaultAssociationResponse

public struct UpdateOracleDbAzureVaultAssociationResponse: Codable, Sendable {
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

extension UpdateOracleDbAzureVaultAssociationResponse: CustomStringConvertible {
    public var description: String { "UpdateOracleDbAzureVaultAssociationResponse()" }
}