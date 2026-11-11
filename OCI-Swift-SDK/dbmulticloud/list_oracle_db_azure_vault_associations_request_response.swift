import Foundation

// MARK: - ListOracleDbAzureVaultAssociationsRequest

public struct ListOracleDbAzureVaultAssociationsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var oracleDbAzureVaultId: String?
    public var displayName: String?
    public var oracleDbAzureVaultAssociationId: String?
    public var lifecycleState: OracleDbAzureVaultAssociationLifecycleStateEnum?
    public var oracleDbAzureConnectorId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListOracleDbAzureVaultAssociationsSortOrderEnum?
    public var sortBy: ListOracleDbAzureVaultAssociationsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, oracleDbAzureVaultId, displayName, oracleDbAzureVaultAssociationId, lifecycleState, oracleDbAzureConnectorId, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                oracleDbAzureVaultId: String? = nil,
                displayName: String? = nil,
                oracleDbAzureVaultAssociationId: String? = nil,
                lifecycleState: OracleDbAzureVaultAssociationLifecycleStateEnum? = nil,
                oracleDbAzureConnectorId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListOracleDbAzureVaultAssociationsSortOrderEnum? = nil,
                sortBy: ListOracleDbAzureVaultAssociationsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.oracleDbAzureVaultId = oracleDbAzureVaultId
        self.displayName = displayName
        self.oracleDbAzureVaultAssociationId = oracleDbAzureVaultAssociationId
        self.lifecycleState = lifecycleState
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

extension ListOracleDbAzureVaultAssociationsRequest: CustomStringConvertible {
    public var description: String { "ListOracleDbAzureVaultAssociationsRequest()" }
}

// MARK: - ListOracleDbAzureVaultAssociationsResponse

public struct ListOracleDbAzureVaultAssociationsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var oracleDbAzureVaultAssociationSummaryCollection: OracleDbAzureVaultAssociationSummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, oracleDbAzureVaultAssociationSummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                oracleDbAzureVaultAssociationSummaryCollection: OracleDbAzureVaultAssociationSummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.oracleDbAzureVaultAssociationSummaryCollection = oracleDbAzureVaultAssociationSummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListOracleDbAzureVaultAssociationsResponse: CustomStringConvertible {
    public var description: String { "ListOracleDbAzureVaultAssociationsResponse()" }
}