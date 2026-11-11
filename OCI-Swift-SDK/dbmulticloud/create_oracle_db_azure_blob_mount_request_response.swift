import Foundation

// MARK: - CreateOracleDbAzureBlobMountRequest

public struct CreateOracleDbAzureBlobMountRequest: Codable, Sendable {
    public var ifMatch: String?
    public var opcRequestId: String?
    public var createOracleDbAzureBlobMountDetails: CreateOracleDbAzureBlobMountDetails?

    private enum CodingKeys: String, CodingKey {
        case ifMatch, opcRequestId, createOracleDbAzureBlobMountDetails
    }

    public init(
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                createOracleDbAzureBlobMountDetails: CreateOracleDbAzureBlobMountDetails? = nil
    ) {
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.createOracleDbAzureBlobMountDetails = createOracleDbAzureBlobMountDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbAzureBlobMountRequest: CustomStringConvertible {
    public var description: String { "CreateOracleDbAzureBlobMountRequest()" }
}

// MARK: - CreateOracleDbAzureBlobMountResponse

public struct CreateOracleDbAzureBlobMountResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var oracleDbAzureBlobMount: OracleDbAzureBlobMount?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId, location, contentLocation, etag, oracleDbAzureBlobMount
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                oracleDbAzureBlobMount: OracleDbAzureBlobMount? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.oracleDbAzureBlobMount = oracleDbAzureBlobMount
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbAzureBlobMountResponse: CustomStringConvertible {
    public var description: String { "CreateOracleDbAzureBlobMountResponse()" }
}