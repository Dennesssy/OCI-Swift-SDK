import Foundation

// MARK: - CreateOracleDbAzureBlobContainerRequest

public struct CreateOracleDbAzureBlobContainerRequest: Codable, Sendable {
    public var ifMatch: String?
    public var opcRequestId: String?
    public var createOracleDbAzureBlobContainerDetails: CreateOracleDbAzureBlobContainerDetails?

    private enum CodingKeys: String, CodingKey {
        case ifMatch, opcRequestId, createOracleDbAzureBlobContainerDetails
    }

    public init(
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                createOracleDbAzureBlobContainerDetails: CreateOracleDbAzureBlobContainerDetails? = nil
    ) {
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.createOracleDbAzureBlobContainerDetails = createOracleDbAzureBlobContainerDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbAzureBlobContainerRequest: CustomStringConvertible {
    public var description: String { "CreateOracleDbAzureBlobContainerRequest()" }
}

// MARK: - CreateOracleDbAzureBlobContainerResponse

public struct CreateOracleDbAzureBlobContainerResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var oracleDbAzureBlobContainer: OracleDbAzureBlobContainer?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId, location, contentLocation, etag, oracleDbAzureBlobContainer
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                oracleDbAzureBlobContainer: OracleDbAzureBlobContainer? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.oracleDbAzureBlobContainer = oracleDbAzureBlobContainer
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbAzureBlobContainerResponse: CustomStringConvertible {
    public var description: String { "CreateOracleDbAzureBlobContainerResponse()" }
}