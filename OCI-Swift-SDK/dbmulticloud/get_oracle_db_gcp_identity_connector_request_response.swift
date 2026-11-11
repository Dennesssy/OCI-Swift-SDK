import Foundation

// MARK: - GetOracleDbGcpIdentityConnectorRequest

public struct GetOracleDbGcpIdentityConnectorRequest: Codable, Sendable {
    public var oracleDbGcpIdentityConnectorId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbGcpIdentityConnectorId, opcRequestId
    }

    public init(
                oracleDbGcpIdentityConnectorId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbGcpIdentityConnectorId = oracleDbGcpIdentityConnectorId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbGcpIdentityConnectorRequest: CustomStringConvertible {
    public var description: String { "GetOracleDbGcpIdentityConnectorRequest()" }
}

// MARK: - GetOracleDbGcpIdentityConnectorResponse

public struct GetOracleDbGcpIdentityConnectorResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var oracleDbGcpIdentityConnector: OracleDbGcpIdentityConnector?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, oracleDbGcpIdentityConnector
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                oracleDbGcpIdentityConnector: OracleDbGcpIdentityConnector? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.oracleDbGcpIdentityConnector = oracleDbGcpIdentityConnector
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbGcpIdentityConnectorResponse: CustomStringConvertible {
    public var description: String { "GetOracleDbGcpIdentityConnectorResponse()" }
}