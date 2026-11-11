import Foundation

// MARK: - CreateOracleDbAzureConnectorRequest

public struct CreateOracleDbAzureConnectorRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createOracleDbAzureConnectorDetails: CreateOracleDbAzureConnectorDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createOracleDbAzureConnectorDetails
    }

    public init(
                opcRequestId: String? = nil,
                createOracleDbAzureConnectorDetails: CreateOracleDbAzureConnectorDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createOracleDbAzureConnectorDetails = createOracleDbAzureConnectorDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbAzureConnectorRequest: CustomStringConvertible {
    public var description: String { "CreateOracleDbAzureConnectorRequest()" }
}

// MARK: - CreateOracleDbAzureConnectorResponse

public struct CreateOracleDbAzureConnectorResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var oracleDbAzureConnector: OracleDbAzureConnector?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId, location, contentLocation, etag, oracleDbAzureConnector
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                oracleDbAzureConnector: OracleDbAzureConnector? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.oracleDbAzureConnector = oracleDbAzureConnector
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbAzureConnectorResponse: CustomStringConvertible {
    public var description: String { "CreateOracleDbAzureConnectorResponse()" }
}