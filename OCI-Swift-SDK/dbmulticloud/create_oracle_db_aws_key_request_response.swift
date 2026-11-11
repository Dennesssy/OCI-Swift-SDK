import Foundation

// MARK: - CreateOracleDbAwsKeyRequest

public struct CreateOracleDbAwsKeyRequest: Codable, Sendable {
    public var ifMatch: String?
    public var opcRequestId: String?
    public var createOracleDbAwsKeyDetails: CreateOracleDbAwsKeyDetails?

    private enum CodingKeys: String, CodingKey {
        case ifMatch, opcRequestId, createOracleDbAwsKeyDetails
    }

    public init(
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                createOracleDbAwsKeyDetails: CreateOracleDbAwsKeyDetails? = nil
    ) {
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.createOracleDbAwsKeyDetails = createOracleDbAwsKeyDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbAwsKeyRequest: CustomStringConvertible {
    public var description: String { "CreateOracleDbAwsKeyRequest()" }
}

// MARK: - CreateOracleDbAwsKeyResponse

public struct CreateOracleDbAwsKeyResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var oracleDbAwsKey: OracleDbAwsKey?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId, location, contentLocation, etag, oracleDbAwsKey
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                oracleDbAwsKey: OracleDbAwsKey? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.oracleDbAwsKey = oracleDbAwsKey
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbAwsKeyResponse: CustomStringConvertible {
    public var description: String { "CreateOracleDbAwsKeyResponse()" }
}