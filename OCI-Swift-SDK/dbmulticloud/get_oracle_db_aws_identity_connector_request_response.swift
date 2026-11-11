import Foundation

// MARK: - GetOracleDbAwsIdentityConnectorRequest

public struct GetOracleDbAwsIdentityConnectorRequest: Codable, Sendable {
    public var oracleDbAwsIdentityConnectorId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAwsIdentityConnectorId, opcRequestId
    }

    public init(
                oracleDbAwsIdentityConnectorId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbAwsIdentityConnectorId = oracleDbAwsIdentityConnectorId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbAwsIdentityConnectorRequest: CustomStringConvertible {
    public var description: String { "GetOracleDbAwsIdentityConnectorRequest()" }
}

// MARK: - GetOracleDbAwsIdentityConnectorResponse

public struct GetOracleDbAwsIdentityConnectorResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var oracleDbAwsIdentityConnector: OracleDbAwsIdentityConnector?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, oracleDbAwsIdentityConnector
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                oracleDbAwsIdentityConnector: OracleDbAwsIdentityConnector? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.oracleDbAwsIdentityConnector = oracleDbAwsIdentityConnector
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbAwsIdentityConnectorResponse: CustomStringConvertible {
    public var description: String { "GetOracleDbAwsIdentityConnectorResponse()" }
}