import Foundation

// MARK: - ListOracleDbAwsKeysRequest

public struct ListOracleDbAwsKeysRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var oracleDbAwsKeyId: String?
    public var lifecycleState: OracleDbAwsKeyLifecycleStateEnum?
    public var oracleDbAwsConnectorId: String?
    public var oracleDbAwsKeyPoolId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListOracleDbAwsKeysSortOrderEnum?
    public var sortBy: ListOracleDbAwsKeysSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, oracleDbAwsKeyId, lifecycleState, oracleDbAwsConnectorId, oracleDbAwsKeyPoolId, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                oracleDbAwsKeyId: String? = nil,
                lifecycleState: OracleDbAwsKeyLifecycleStateEnum? = nil,
                oracleDbAwsConnectorId: String? = nil,
                oracleDbAwsKeyPoolId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListOracleDbAwsKeysSortOrderEnum? = nil,
                sortBy: ListOracleDbAwsKeysSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.oracleDbAwsKeyId = oracleDbAwsKeyId
        self.lifecycleState = lifecycleState
        self.oracleDbAwsConnectorId = oracleDbAwsConnectorId
        self.oracleDbAwsKeyPoolId = oracleDbAwsKeyPoolId
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

extension ListOracleDbAwsKeysRequest: CustomStringConvertible {
    public var description: String { "ListOracleDbAwsKeysRequest()" }
}

// MARK: - ListOracleDbAwsKeysResponse

public struct ListOracleDbAwsKeysResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var oracleDbAwsKeySummaryCollection: OracleDbAwsKeySummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, oracleDbAwsKeySummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                oracleDbAwsKeySummaryCollection: OracleDbAwsKeySummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.oracleDbAwsKeySummaryCollection = oracleDbAwsKeySummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListOracleDbAwsKeysResponse: CustomStringConvertible {
    public var description: String { "ListOracleDbAwsKeysResponse()" }
}