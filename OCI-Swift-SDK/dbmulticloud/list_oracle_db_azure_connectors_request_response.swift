import Foundation

// MARK: - ListOracleDbAzureConnectorsRequest

public struct ListOracleDbAzureConnectorsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var oracleDbAzureConnectorId: String?
    public var lifecycleState: OracleDbAzureConnectorLifecycleStateEnum?
    public var dbClusterResourceId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListOracleDbAzureConnectorsSortOrderEnum?
    public var sortBy: ListOracleDbAzureConnectorsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, oracleDbAzureConnectorId, lifecycleState, dbClusterResourceId, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                oracleDbAzureConnectorId: String? = nil,
                lifecycleState: OracleDbAzureConnectorLifecycleStateEnum? = nil,
                dbClusterResourceId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListOracleDbAzureConnectorsSortOrderEnum? = nil,
                sortBy: ListOracleDbAzureConnectorsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.oracleDbAzureConnectorId = oracleDbAzureConnectorId
        self.lifecycleState = lifecycleState
        self.dbClusterResourceId = dbClusterResourceId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListOracleDbAzureConnectorsRequest: CustomStringConvertible {
    public var description: String { "ListOracleDbAzureConnectorsRequest()" }
}

// MARK: - ListOracleDbAzureConnectorsResponse

public struct ListOracleDbAzureConnectorsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var oracleDbAzureConnectorSummaryCollection: OracleDbAzureConnectorSummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, oracleDbAzureConnectorSummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                oracleDbAzureConnectorSummaryCollection: OracleDbAzureConnectorSummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.oracleDbAzureConnectorSummaryCollection = oracleDbAzureConnectorSummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListOracleDbAzureConnectorsResponse: CustomStringConvertible {
    public var description: String { "ListOracleDbAzureConnectorsResponse()" }
}