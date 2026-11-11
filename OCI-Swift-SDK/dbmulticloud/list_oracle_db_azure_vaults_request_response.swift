import Foundation

// MARK: - ListOracleDbAzureVaultsRequest

public struct ListOracleDbAzureVaultsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var oracleDbAzureVaultId: String?
    public var lifecycleState: OracleDbAzureVaultLifecycleStateEnum?
    public var oracleDbAzureResourceGroup: String?
    public var oracleDbAzureConnectorId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListOracleDbAzureVaultsSortOrderEnum?
    public var sortBy: ListOracleDbAzureVaultsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, oracleDbAzureVaultId, lifecycleState, oracleDbAzureResourceGroup, oracleDbAzureConnectorId, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                oracleDbAzureVaultId: String? = nil,
                lifecycleState: OracleDbAzureVaultLifecycleStateEnum? = nil,
                oracleDbAzureResourceGroup: String? = nil,
                oracleDbAzureConnectorId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListOracleDbAzureVaultsSortOrderEnum? = nil,
                sortBy: ListOracleDbAzureVaultsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.oracleDbAzureVaultId = oracleDbAzureVaultId
        self.lifecycleState = lifecycleState
        self.oracleDbAzureResourceGroup = oracleDbAzureResourceGroup
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

extension ListOracleDbAzureVaultsRequest: CustomStringConvertible {
    public var description: String { "ListOracleDbAzureVaultsRequest()" }
}

// MARK: - ListOracleDbAzureVaultsResponse

public struct ListOracleDbAzureVaultsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var oracleDbAzureVaultSummaryCollection: OracleDbAzureVaultSummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, oracleDbAzureVaultSummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                oracleDbAzureVaultSummaryCollection: OracleDbAzureVaultSummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.oracleDbAzureVaultSummaryCollection = oracleDbAzureVaultSummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListOracleDbAzureVaultsResponse: CustomStringConvertible {
    public var description: String { "ListOracleDbAzureVaultsResponse()" }
}