import Foundation

// MARK: - ListOracleDbAzureBlobContainersRequest

public struct ListOracleDbAzureBlobContainersRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var oracleDbAzureBlobContainerId: String?
    public var lifecycleState: OracleDbAzureBlobContainerLifecycleStateEnum?
    public var azureStorageAccountName: String?
    public var azureStorageContainerName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListOracleDbAzureBlobContainersSortOrderEnum?
    public var sortBy: ListOracleDbAzureBlobContainersSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, oracleDbAzureBlobContainerId, lifecycleState, azureStorageAccountName, azureStorageContainerName, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                oracleDbAzureBlobContainerId: String? = nil,
                lifecycleState: OracleDbAzureBlobContainerLifecycleStateEnum? = nil,
                azureStorageAccountName: String? = nil,
                azureStorageContainerName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListOracleDbAzureBlobContainersSortOrderEnum? = nil,
                sortBy: ListOracleDbAzureBlobContainersSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.oracleDbAzureBlobContainerId = oracleDbAzureBlobContainerId
        self.lifecycleState = lifecycleState
        self.azureStorageAccountName = azureStorageAccountName
        self.azureStorageContainerName = azureStorageContainerName
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

extension ListOracleDbAzureBlobContainersRequest: CustomStringConvertible {
    public var description: String { "ListOracleDbAzureBlobContainersRequest()" }
}

// MARK: - ListOracleDbAzureBlobContainersResponse

public struct ListOracleDbAzureBlobContainersResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var oracleDbAzureBlobContainerSummaryCollection: OracleDbAzureBlobContainerSummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, oracleDbAzureBlobContainerSummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                oracleDbAzureBlobContainerSummaryCollection: OracleDbAzureBlobContainerSummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.oracleDbAzureBlobContainerSummaryCollection = oracleDbAzureBlobContainerSummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListOracleDbAzureBlobContainersResponse: CustomStringConvertible {
    public var description: String { "ListOracleDbAzureBlobContainersResponse()" }
}