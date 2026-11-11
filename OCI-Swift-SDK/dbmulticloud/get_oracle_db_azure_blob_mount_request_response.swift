import Foundation

// MARK: - GetOracleDbAzureBlobMountRequest

public struct GetOracleDbAzureBlobMountRequest: Codable, Sendable {
    public var oracleDbAzureBlobMountId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: GetOracleDbAzureBlobMountSortOrderEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureBlobMountId, limit, page, sortOrder, opcRequestId
    }

    public init(
                oracleDbAzureBlobMountId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: GetOracleDbAzureBlobMountSortOrderEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbAzureBlobMountId = oracleDbAzureBlobMountId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbAzureBlobMountRequest: CustomStringConvertible {
    public var description: String { "GetOracleDbAzureBlobMountRequest()" }
}

// MARK: - GetOracleDbAzureBlobMountResponse

public struct GetOracleDbAzureBlobMountResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var oracleDbAzureBlobMount: OracleDbAzureBlobMount?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, oracleDbAzureBlobMount
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                oracleDbAzureBlobMount: OracleDbAzureBlobMount? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.oracleDbAzureBlobMount = oracleDbAzureBlobMount
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbAzureBlobMountResponse: CustomStringConvertible {
    public var description: String { "GetOracleDbAzureBlobMountResponse()" }
}