import Foundation

// MARK: - CreateOracleDbAwsKeyPoolRequest

public struct CreateOracleDbAwsKeyPoolRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createOracleDbAwsKeyPoolDetails: CreateOracleDbAwsKeyPoolDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createOracleDbAwsKeyPoolDetails
    }

    public init(
                opcRequestId: String? = nil,
                createOracleDbAwsKeyPoolDetails: CreateOracleDbAwsKeyPoolDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createOracleDbAwsKeyPoolDetails = createOracleDbAwsKeyPoolDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbAwsKeyPoolRequest: CustomStringConvertible {
    public var description: String { "CreateOracleDbAwsKeyPoolRequest()" }
}

// MARK: - CreateOracleDbAwsKeyPoolResponse

public struct CreateOracleDbAwsKeyPoolResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var oracleDbAwsKeyPool: OracleDbAwsKeyPool?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId, location, contentLocation, etag, oracleDbAwsKeyPool
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                oracleDbAwsKeyPool: OracleDbAwsKeyPool? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.oracleDbAwsKeyPool = oracleDbAwsKeyPool
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbAwsKeyPoolResponse: CustomStringConvertible {
    public var description: String { "CreateOracleDbAwsKeyPoolResponse()" }
}