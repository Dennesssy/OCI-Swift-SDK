import Foundation

// MARK: - GetOracleDbAzureKeyRequest

public struct GetOracleDbAzureKeyRequest: Codable, Sendable {
    public var oracleDbAzureKeyId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: GetOracleDbAzureKeySortOrderEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureKeyId, limit, page, sortOrder, opcRequestId
    }

    public init(
                oracleDbAzureKeyId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: GetOracleDbAzureKeySortOrderEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbAzureKeyId = oracleDbAzureKeyId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbAzureKeyRequest: CustomStringConvertible {
    public var description: String { "GetOracleDbAzureKeyRequest()" }
}

// MARK: - GetOracleDbAzureKeyResponse

public struct GetOracleDbAzureKeyResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var oracleDbAzureKey: OracleDbAzureKey?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, oracleDbAzureKey
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                oracleDbAzureKey: OracleDbAzureKey? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.oracleDbAzureKey = oracleDbAzureKey
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbAzureKeyResponse: CustomStringConvertible {
    public var description: String { "GetOracleDbAzureKeyResponse()" }
}