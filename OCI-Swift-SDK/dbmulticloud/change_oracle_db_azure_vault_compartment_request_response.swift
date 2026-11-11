import Foundation

// MARK: - ChangeOracleDbAzureVaultCompartmentRequest

public struct ChangeOracleDbAzureVaultCompartmentRequest: Codable, Sendable {
    public var oracleDbAzureVaultId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeOracleDbAzureVaultCompartmentDetails: ChangeOracleDbAzureVaultCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureVaultId, ifMatch, opcRequestId, changeOracleDbAzureVaultCompartmentDetails
    }

    public init(
                oracleDbAzureVaultId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeOracleDbAzureVaultCompartmentDetails: ChangeOracleDbAzureVaultCompartmentDetails? = nil
    ) {
        self.oracleDbAzureVaultId = oracleDbAzureVaultId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeOracleDbAzureVaultCompartmentDetails = changeOracleDbAzureVaultCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeOracleDbAzureVaultCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeOracleDbAzureVaultCompartmentRequest()" }
}

// MARK: - ChangeOracleDbAzureVaultCompartmentResponse

public struct ChangeOracleDbAzureVaultCompartmentResponse: Codable, Sendable {
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

extension ChangeOracleDbAzureVaultCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeOracleDbAzureVaultCompartmentResponse()" }
}