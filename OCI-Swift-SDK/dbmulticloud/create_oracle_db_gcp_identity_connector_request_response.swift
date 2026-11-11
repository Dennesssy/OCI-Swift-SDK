import Foundation

// MARK: - CreateOracleDbGcpIdentityConnectorRequest

public struct CreateOracleDbGcpIdentityConnectorRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createOracleDbGcpIdentityConnectorDetails: CreateOracleDbGcpIdentityConnectorDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createOracleDbGcpIdentityConnectorDetails
    }

    public init(
                opcRequestId: String? = nil,
                createOracleDbGcpIdentityConnectorDetails: CreateOracleDbGcpIdentityConnectorDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createOracleDbGcpIdentityConnectorDetails = createOracleDbGcpIdentityConnectorDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbGcpIdentityConnectorRequest: CustomStringConvertible {
    public var description: String { "CreateOracleDbGcpIdentityConnectorRequest()" }
}

// MARK: - CreateOracleDbGcpIdentityConnectorResponse

public struct CreateOracleDbGcpIdentityConnectorResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var oracleDbGcpIdentityConnector: OracleDbGcpIdentityConnector?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId, location, contentLocation, etag, oracleDbGcpIdentityConnector
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                oracleDbGcpIdentityConnector: OracleDbGcpIdentityConnector? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.oracleDbGcpIdentityConnector = oracleDbGcpIdentityConnector
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbGcpIdentityConnectorResponse: CustomStringConvertible {
    public var description: String { "CreateOracleDbGcpIdentityConnectorResponse()" }
}