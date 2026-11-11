import Foundation

// MARK: - ChangeOracleDbAzureVaultAssociationCompartmentRequest

public struct ChangeOracleDbAzureVaultAssociationCompartmentRequest: Codable, Sendable {
    public var oracleDbAzureVaultAssociationId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeOracleDbAzureVaultAssociationCompartmentDetails: ChangeOracleDbAzureVaultAssociationCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureVaultAssociationId, ifMatch, opcRequestId, changeOracleDbAzureVaultAssociationCompartmentDetails
    }

    public init(
                oracleDbAzureVaultAssociationId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeOracleDbAzureVaultAssociationCompartmentDetails: ChangeOracleDbAzureVaultAssociationCompartmentDetails? = nil
    ) {
        self.oracleDbAzureVaultAssociationId = oracleDbAzureVaultAssociationId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeOracleDbAzureVaultAssociationCompartmentDetails = changeOracleDbAzureVaultAssociationCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeOracleDbAzureVaultAssociationCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeOracleDbAzureVaultAssociationCompartmentRequest()" }
}

// MARK: - ChangeOracleDbAzureVaultAssociationCompartmentResponse

public struct ChangeOracleDbAzureVaultAssociationCompartmentResponse: Codable, Sendable {
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

extension ChangeOracleDbAzureVaultAssociationCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeOracleDbAzureVaultAssociationCompartmentResponse()" }
}