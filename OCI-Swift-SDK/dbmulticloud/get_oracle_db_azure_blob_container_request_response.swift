import Foundation

// MARK: - GetOracleDbAzureBlobContainerRequest

public struct GetOracleDbAzureBlobContainerRequest: Codable, Sendable {
    public var oracleDbAzureBlobContainerId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: GetOracleDbAzureBlobContainerSortOrderEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureBlobContainerId, limit, page, sortOrder, opcRequestId
    }

    public init(
                oracleDbAzureBlobContainerId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: GetOracleDbAzureBlobContainerSortOrderEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbAzureBlobContainerId = oracleDbAzureBlobContainerId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbAzureBlobContainerRequest: CustomStringConvertible {
    public var description: String { "GetOracleDbAzureBlobContainerRequest()" }
}

// MARK: - GetOracleDbAzureBlobContainerResponse

public struct GetOracleDbAzureBlobContainerResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var oracleDbAzureBlobContainer: OracleDbAzureBlobContainer?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, oracleDbAzureBlobContainer
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                oracleDbAzureBlobContainer: OracleDbAzureBlobContainer? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.oracleDbAzureBlobContainer = oracleDbAzureBlobContainer
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbAzureBlobContainerResponse: CustomStringConvertible {
    public var description: String { "GetOracleDbAzureBlobContainerResponse()" }
}