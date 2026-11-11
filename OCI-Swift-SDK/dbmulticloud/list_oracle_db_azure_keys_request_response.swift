import Foundation

// MARK: - ListOracleDbAzureKeysRequest

public struct ListOracleDbAzureKeysRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var oracleDbAzureVaultId: String?
    public var oracleDbAzureKeyId: String?
    public var lifecycleState: OracleDbAzureKeyLifecycleStateEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListOracleDbAzureKeysSortOrderEnum?
    public var sortBy: ListOracleDbAzureKeysSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, oracleDbAzureVaultId, oracleDbAzureKeyId, lifecycleState, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                oracleDbAzureVaultId: String? = nil,
                oracleDbAzureKeyId: String? = nil,
                lifecycleState: OracleDbAzureKeyLifecycleStateEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListOracleDbAzureKeysSortOrderEnum? = nil,
                sortBy: ListOracleDbAzureKeysSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.oracleDbAzureVaultId = oracleDbAzureVaultId
        self.oracleDbAzureKeyId = oracleDbAzureKeyId
        self.lifecycleState = lifecycleState
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

extension ListOracleDbAzureKeysRequest: CustomStringConvertible {
    public var description: String { "ListOracleDbAzureKeysRequest()" }
}

// MARK: - ListOracleDbAzureKeysResponse

public struct ListOracleDbAzureKeysResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var oracleDbAzureKeySummaryCollection: OracleDbAzureKeySummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, oracleDbAzureKeySummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                oracleDbAzureKeySummaryCollection: OracleDbAzureKeySummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.oracleDbAzureKeySummaryCollection = oracleDbAzureKeySummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListOracleDbAzureKeysResponse: CustomStringConvertible {
    public var description: String { "ListOracleDbAzureKeysResponse()" }
}