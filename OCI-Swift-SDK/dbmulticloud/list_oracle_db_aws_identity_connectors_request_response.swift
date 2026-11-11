import Foundation

// MARK: - ListOracleDbAwsIdentityConnectorsRequest

public struct ListOracleDbAwsIdentityConnectorsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var lifecycleState: OracleDbAwsIdentityConnectorLifecycleStateEnum?
    public var resourceId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListOracleDbAwsIdentityConnectorsSortOrderEnum?
    public var sortBy: ListOracleDbAwsIdentityConnectorsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, lifecycleState, resourceId, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                lifecycleState: OracleDbAwsIdentityConnectorLifecycleStateEnum? = nil,
                resourceId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListOracleDbAwsIdentityConnectorsSortOrderEnum? = nil,
                sortBy: ListOracleDbAwsIdentityConnectorsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.lifecycleState = lifecycleState
        self.resourceId = resourceId
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

extension ListOracleDbAwsIdentityConnectorsRequest: CustomStringConvertible {
    public var description: String { "ListOracleDbAwsIdentityConnectorsRequest()" }
}

// MARK: - ListOracleDbAwsIdentityConnectorsResponse

public struct ListOracleDbAwsIdentityConnectorsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var oracleDbAwsIdentityConnectorSummaryCollection: OracleDbAwsIdentityConnectorSummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, oracleDbAwsIdentityConnectorSummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                oracleDbAwsIdentityConnectorSummaryCollection: OracleDbAwsIdentityConnectorSummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.oracleDbAwsIdentityConnectorSummaryCollection = oracleDbAwsIdentityConnectorSummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListOracleDbAwsIdentityConnectorsResponse: CustomStringConvertible {
    public var description: String { "ListOracleDbAwsIdentityConnectorsResponse()" }
}