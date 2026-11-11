import Foundation

// MARK: - ListOracleDbGcpKeyRingsRequest

public struct ListOracleDbGcpKeyRingsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var oracleDbGcpKeyRingId: String?
    public var lifecycleState: OracleDbGcpKeyRingLifecycleStateEnum?
    public var oracleDbGcpConnectorId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListOracleDbGcpKeyRingsSortOrderEnum?
    public var sortBy: ListOracleDbGcpKeyRingsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, oracleDbGcpKeyRingId, lifecycleState, oracleDbGcpConnectorId, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                oracleDbGcpKeyRingId: String? = nil,
                lifecycleState: OracleDbGcpKeyRingLifecycleStateEnum? = nil,
                oracleDbGcpConnectorId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListOracleDbGcpKeyRingsSortOrderEnum? = nil,
                sortBy: ListOracleDbGcpKeyRingsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.oracleDbGcpKeyRingId = oracleDbGcpKeyRingId
        self.lifecycleState = lifecycleState
        self.oracleDbGcpConnectorId = oracleDbGcpConnectorId
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

extension ListOracleDbGcpKeyRingsRequest: CustomStringConvertible {
    public var description: String { "ListOracleDbGcpKeyRingsRequest()" }
}

// MARK: - ListOracleDbGcpKeyRingsResponse

public struct ListOracleDbGcpKeyRingsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var oracleDbGcpKeyRingSummaryCollection: OracleDbGcpKeyRingSummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, oracleDbGcpKeyRingSummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                oracleDbGcpKeyRingSummaryCollection: OracleDbGcpKeyRingSummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.oracleDbGcpKeyRingSummaryCollection = oracleDbGcpKeyRingSummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListOracleDbGcpKeyRingsResponse: CustomStringConvertible {
    public var description: String { "ListOracleDbGcpKeyRingsResponse()" }
}