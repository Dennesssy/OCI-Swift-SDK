import Foundation

// MARK: - GetOracleDbAwsKeyRequest

public struct GetOracleDbAwsKeyRequest: Codable, Sendable {
    public var oracleDbAwsKeyId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: GetOracleDbAwsKeySortOrderEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAwsKeyId, limit, page, sortOrder, opcRequestId
    }

    public init(
                oracleDbAwsKeyId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: GetOracleDbAwsKeySortOrderEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbAwsKeyId = oracleDbAwsKeyId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbAwsKeyRequest: CustomStringConvertible {
    public var description: String { "GetOracleDbAwsKeyRequest()" }
}

// MARK: - GetOracleDbAwsKeyResponse

public struct GetOracleDbAwsKeyResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var oracleDbAwsKey: OracleDbAwsKey?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, oracleDbAwsKey
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                oracleDbAwsKey: OracleDbAwsKey? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.oracleDbAwsKey = oracleDbAwsKey
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbAwsKeyResponse: CustomStringConvertible {
    public var description: String { "GetOracleDbAwsKeyResponse()" }
}