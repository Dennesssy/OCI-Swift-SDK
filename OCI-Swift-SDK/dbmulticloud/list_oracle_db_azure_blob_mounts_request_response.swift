import Foundation

// MARK: - ListOracleDbAzureBlobMountsRequest

public struct ListOracleDbAzureBlobMountsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var oracleDbAzureBlobMountId: String?
    public var lifecycleState: OracleDbAzureBlobMountLifecycleStateEnum?
    public var oracleDbAzureBlobContainerId: String?
    public var oracleDbAzureConnectorId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListOracleDbAzureBlobMountsSortOrderEnum?
    public var sortBy: ListOracleDbAzureBlobMountsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, oracleDbAzureBlobMountId, lifecycleState, oracleDbAzureBlobContainerId, oracleDbAzureConnectorId, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                oracleDbAzureBlobMountId: String? = nil,
                lifecycleState: OracleDbAzureBlobMountLifecycleStateEnum? = nil,
                oracleDbAzureBlobContainerId: String? = nil,
                oracleDbAzureConnectorId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListOracleDbAzureBlobMountsSortOrderEnum? = nil,
                sortBy: ListOracleDbAzureBlobMountsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.oracleDbAzureBlobMountId = oracleDbAzureBlobMountId
        self.lifecycleState = lifecycleState
        self.oracleDbAzureBlobContainerId = oracleDbAzureBlobContainerId
        self.oracleDbAzureConnectorId = oracleDbAzureConnectorId
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

extension ListOracleDbAzureBlobMountsRequest: CustomStringConvertible {
    public var description: String { "ListOracleDbAzureBlobMountsRequest()" }
}

// MARK: - ListOracleDbAzureBlobMountsResponse

public struct ListOracleDbAzureBlobMountsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var oracleDbAzureBlobMountSummaryCollection: OracleDbAzureBlobMountSummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, oracleDbAzureBlobMountSummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                oracleDbAzureBlobMountSummaryCollection: OracleDbAzureBlobMountSummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.oracleDbAzureBlobMountSummaryCollection = oracleDbAzureBlobMountSummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListOracleDbAzureBlobMountsResponse: CustomStringConvertible {
    public var description: String { "ListOracleDbAzureBlobMountsResponse()" }
}