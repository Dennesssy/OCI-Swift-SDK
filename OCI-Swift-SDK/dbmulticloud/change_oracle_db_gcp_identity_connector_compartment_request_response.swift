import Foundation

// MARK: - ChangeOracleDbGcpIdentityConnectorCompartmentRequest

public struct ChangeOracleDbGcpIdentityConnectorCompartmentRequest: Codable, Sendable {
    public var oracleDbGcpIdentityConnectorId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeOracleDbGcpIdentityConnectorCompartmentDetails: ChangeOracleDbGcpIdentityConnectorCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbGcpIdentityConnectorId, ifMatch, opcRequestId, changeOracleDbGcpIdentityConnectorCompartmentDetails
    }

    public init(
                oracleDbGcpIdentityConnectorId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeOracleDbGcpIdentityConnectorCompartmentDetails: ChangeOracleDbGcpIdentityConnectorCompartmentDetails? = nil
    ) {
        self.oracleDbGcpIdentityConnectorId = oracleDbGcpIdentityConnectorId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeOracleDbGcpIdentityConnectorCompartmentDetails = changeOracleDbGcpIdentityConnectorCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeOracleDbGcpIdentityConnectorCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeOracleDbGcpIdentityConnectorCompartmentRequest()" }
}

// MARK: - ChangeOracleDbGcpIdentityConnectorCompartmentResponse

public struct ChangeOracleDbGcpIdentityConnectorCompartmentResponse: Codable, Sendable {
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

extension ChangeOracleDbGcpIdentityConnectorCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeOracleDbGcpIdentityConnectorCompartmentResponse()" }
}