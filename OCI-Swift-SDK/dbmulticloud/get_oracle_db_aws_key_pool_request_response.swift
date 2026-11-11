import Foundation

// MARK: - GetOracleDbAwsKeyPoolRequest

public struct GetOracleDbAwsKeyPoolRequest: Codable, Sendable {
    public var oracleDbAwsKeyPoolId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAwsKeyPoolId, opcRequestId
    }

    public init(
                oracleDbAwsKeyPoolId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbAwsKeyPoolId = oracleDbAwsKeyPoolId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbAwsKeyPoolRequest: CustomStringConvertible {
    public var description: String { "GetOracleDbAwsKeyPoolRequest()" }
}

// MARK: - GetOracleDbAwsKeyPoolResponse

public struct GetOracleDbAwsKeyPoolResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var oracleDbAwsKeyPool: OracleDbAwsKeyPool?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, oracleDbAwsKeyPool
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                oracleDbAwsKeyPool: OracleDbAwsKeyPool? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.oracleDbAwsKeyPool = oracleDbAwsKeyPool
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbAwsKeyPoolResponse: CustomStringConvertible {
    public var description: String { "GetOracleDbAwsKeyPoolResponse()" }
}