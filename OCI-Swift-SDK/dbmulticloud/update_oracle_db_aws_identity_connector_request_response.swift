import Foundation

// MARK: - UpdateOracleDbAwsIdentityConnectorRequest

public struct UpdateOracleDbAwsIdentityConnectorRequest: Codable, Sendable {
    public var oracleDbAwsIdentityConnectorId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateOracleDbAwsIdentityConnectorDetails: UpdateOracleDbAwsIdentityConnectorDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAwsIdentityConnectorId, ifMatch, opcRequestId, updateOracleDbAwsIdentityConnectorDetails
    }

    public init(
                oracleDbAwsIdentityConnectorId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateOracleDbAwsIdentityConnectorDetails: UpdateOracleDbAwsIdentityConnectorDetails? = nil
    ) {
        self.oracleDbAwsIdentityConnectorId = oracleDbAwsIdentityConnectorId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateOracleDbAwsIdentityConnectorDetails = updateOracleDbAwsIdentityConnectorDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOracleDbAwsIdentityConnectorRequest: CustomStringConvertible {
    public var description: String { "UpdateOracleDbAwsIdentityConnectorRequest()" }
}

// MARK: - UpdateOracleDbAwsIdentityConnectorResponse

public struct UpdateOracleDbAwsIdentityConnectorResponse: Codable, Sendable {
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

extension UpdateOracleDbAwsIdentityConnectorResponse: CustomStringConvertible {
    public var description: String { "UpdateOracleDbAwsIdentityConnectorResponse()" }
}