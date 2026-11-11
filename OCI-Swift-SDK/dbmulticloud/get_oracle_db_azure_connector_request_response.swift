import Foundation

// MARK: - GetOracleDbAzureConnectorRequest

public struct GetOracleDbAzureConnectorRequest: Codable, Sendable {
    public var oracleDbAzureConnectorId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: GetOracleDbAzureConnectorSortOrderEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureConnectorId, limit, page, sortOrder, opcRequestId
    }

    public init(
                oracleDbAzureConnectorId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: GetOracleDbAzureConnectorSortOrderEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbAzureConnectorId = oracleDbAzureConnectorId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbAzureConnectorRequest: CustomStringConvertible {
    public var description: String { "GetOracleDbAzureConnectorRequest()" }
}

// MARK: - GetOracleDbAzureConnectorResponse

public struct GetOracleDbAzureConnectorResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var oracleDbAzureConnector: OracleDbAzureConnector?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, oracleDbAzureConnector
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                oracleDbAzureConnector: OracleDbAzureConnector? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.oracleDbAzureConnector = oracleDbAzureConnector
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbAzureConnectorResponse: CustomStringConvertible {
    public var description: String { "GetOracleDbAzureConnectorResponse()" }
}