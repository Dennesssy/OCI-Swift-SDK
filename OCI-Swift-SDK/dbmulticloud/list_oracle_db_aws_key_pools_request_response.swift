import Foundation

// MARK: - ListOracleDbAwsKeyPoolsRequest

public struct ListOracleDbAwsKeyPoolsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var oracleDbAwsKeyPoolId: String?
    public var lifecycleState: OracleDbAwsKeyPoolLifecycleStateEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListOracleDbAwsKeyPoolsSortOrderEnum?
    public var sortBy: ListOracleDbAwsKeyPoolsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, oracleDbAwsKeyPoolId, lifecycleState, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                oracleDbAwsKeyPoolId: String? = nil,
                lifecycleState: OracleDbAwsKeyPoolLifecycleStateEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListOracleDbAwsKeyPoolsSortOrderEnum? = nil,
                sortBy: ListOracleDbAwsKeyPoolsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.oracleDbAwsKeyPoolId = oracleDbAwsKeyPoolId
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

extension ListOracleDbAwsKeyPoolsRequest: CustomStringConvertible {
    public var description: String { "ListOracleDbAwsKeyPoolsRequest()" }
}

// MARK: - ListOracleDbAwsKeyPoolsResponse

public struct ListOracleDbAwsKeyPoolsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var oracleDbAwsKeyPoolCollection: OracleDbAwsKeyPoolCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, oracleDbAwsKeyPoolCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                oracleDbAwsKeyPoolCollection: OracleDbAwsKeyPoolCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.oracleDbAwsKeyPoolCollection = oracleDbAwsKeyPoolCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListOracleDbAwsKeyPoolsResponse: CustomStringConvertible {
    public var description: String { "ListOracleDbAwsKeyPoolsResponse()" }
}