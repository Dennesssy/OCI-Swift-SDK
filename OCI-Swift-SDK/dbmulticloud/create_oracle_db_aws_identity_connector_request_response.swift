import Foundation

// MARK: - CreateOracleDbAwsIdentityConnectorRequest

public struct CreateOracleDbAwsIdentityConnectorRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createOracleDbAwsIdentityConnectorDetails: CreateOracleDbAwsIdentityConnectorDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createOracleDbAwsIdentityConnectorDetails
    }

    public init(
                opcRequestId: String? = nil,
                createOracleDbAwsIdentityConnectorDetails: CreateOracleDbAwsIdentityConnectorDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createOracleDbAwsIdentityConnectorDetails = createOracleDbAwsIdentityConnectorDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbAwsIdentityConnectorRequest: CustomStringConvertible {
    public var description: String { "CreateOracleDbAwsIdentityConnectorRequest()" }
}

// MARK: - CreateOracleDbAwsIdentityConnectorResponse

public struct CreateOracleDbAwsIdentityConnectorResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var oracleDbAwsIdentityConnector: OracleDbAwsIdentityConnector?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId, location, contentLocation, etag, oracleDbAwsIdentityConnector
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                oracleDbAwsIdentityConnector: OracleDbAwsIdentityConnector? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.oracleDbAwsIdentityConnector = oracleDbAwsIdentityConnector
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbAwsIdentityConnectorResponse: CustomStringConvertible {
    public var description: String { "CreateOracleDbAwsIdentityConnectorResponse()" }
}