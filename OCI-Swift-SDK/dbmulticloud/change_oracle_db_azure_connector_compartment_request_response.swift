import Foundation

// MARK: - ChangeOracleDbAzureConnectorCompartmentRequest

public struct ChangeOracleDbAzureConnectorCompartmentRequest: Codable, Sendable {
    public var oracleDbAzureConnectorId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeOracleDbAzureConnectorCompartmentDetails: ChangeOracleDbAzureConnectorCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureConnectorId, ifMatch, opcRequestId, changeOracleDbAzureConnectorCompartmentDetails
    }

    public init(
                oracleDbAzureConnectorId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeOracleDbAzureConnectorCompartmentDetails: ChangeOracleDbAzureConnectorCompartmentDetails? = nil
    ) {
        self.oracleDbAzureConnectorId = oracleDbAzureConnectorId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeOracleDbAzureConnectorCompartmentDetails = changeOracleDbAzureConnectorCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeOracleDbAzureConnectorCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeOracleDbAzureConnectorCompartmentRequest()" }
}

// MARK: - ChangeOracleDbAzureConnectorCompartmentResponse

public struct ChangeOracleDbAzureConnectorCompartmentResponse: Codable, Sendable {
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

extension ChangeOracleDbAzureConnectorCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeOracleDbAzureConnectorCompartmentResponse()" }
}