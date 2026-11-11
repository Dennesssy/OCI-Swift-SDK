import Foundation

// MARK: - ChangeOracleDbAwsIdentityConnectorCompartmentRequest

public struct ChangeOracleDbAwsIdentityConnectorCompartmentRequest: Codable, Sendable {
    public var oracleDbAwsIdentityConnectorId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeOracleDbAwsIdentityConnectorCompartmentDetails: ChangeOracleDbAwsIdentityConnectorCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAwsIdentityConnectorId, ifMatch, opcRequestId, changeOracleDbAwsIdentityConnectorCompartmentDetails
    }

    public init(
                oracleDbAwsIdentityConnectorId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeOracleDbAwsIdentityConnectorCompartmentDetails: ChangeOracleDbAwsIdentityConnectorCompartmentDetails? = nil
    ) {
        self.oracleDbAwsIdentityConnectorId = oracleDbAwsIdentityConnectorId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeOracleDbAwsIdentityConnectorCompartmentDetails = changeOracleDbAwsIdentityConnectorCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeOracleDbAwsIdentityConnectorCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeOracleDbAwsIdentityConnectorCompartmentRequest()" }
}

// MARK: - ChangeOracleDbAwsIdentityConnectorCompartmentResponse

public struct ChangeOracleDbAwsIdentityConnectorCompartmentResponse: Codable, Sendable {
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

extension ChangeOracleDbAwsIdentityConnectorCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeOracleDbAwsIdentityConnectorCompartmentResponse()" }
}