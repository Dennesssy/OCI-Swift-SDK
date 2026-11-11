import Foundation

// MARK: - ListOracleDbGcpIdentityConnectorsRequest

public struct ListOracleDbGcpIdentityConnectorsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var resourceId: String?
    public var lifecycleState: OracleDbGcpIdentityConnectorLifecycleStateEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListOracleDbGcpIdentityConnectorsSortOrderEnum?
    public var sortBy: ListOracleDbGcpIdentityConnectorsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, resourceId, lifecycleState, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                resourceId: String? = nil,
                lifecycleState: OracleDbGcpIdentityConnectorLifecycleStateEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListOracleDbGcpIdentityConnectorsSortOrderEnum? = nil,
                sortBy: ListOracleDbGcpIdentityConnectorsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.resourceId = resourceId
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

extension ListOracleDbGcpIdentityConnectorsRequest: CustomStringConvertible {
    public var description: String { "ListOracleDbGcpIdentityConnectorsRequest()" }
}

// MARK: - ListOracleDbGcpIdentityConnectorsResponse

public struct ListOracleDbGcpIdentityConnectorsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var oracleDbGcpIdentityConnectorSummaryCollection: OracleDbGcpIdentityConnectorSummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, oracleDbGcpIdentityConnectorSummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                oracleDbGcpIdentityConnectorSummaryCollection: OracleDbGcpIdentityConnectorSummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.oracleDbGcpIdentityConnectorSummaryCollection = oracleDbGcpIdentityConnectorSummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListOracleDbGcpIdentityConnectorsResponse: CustomStringConvertible {
    public var description: String { "ListOracleDbGcpIdentityConnectorsResponse()" }
}