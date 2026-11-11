import Foundation

// MARK: - ListOracleDbGcpKeysRequest

public struct ListOracleDbGcpKeysRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var oracleDbGcpKeyRingId: String?
    public var oracleDbGcpKeyId: String?
    public var lifecycleState: OracleDbGcpKeyLifecycleStateEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListOracleDbGcpKeysSortOrderEnum?
    public var sortBy: ListOracleDbGcpKeysSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, oracleDbGcpKeyRingId, oracleDbGcpKeyId, lifecycleState, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                oracleDbGcpKeyRingId: String? = nil,
                oracleDbGcpKeyId: String? = nil,
                lifecycleState: OracleDbGcpKeyLifecycleStateEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListOracleDbGcpKeysSortOrderEnum? = nil,
                sortBy: ListOracleDbGcpKeysSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.oracleDbGcpKeyRingId = oracleDbGcpKeyRingId
        self.oracleDbGcpKeyId = oracleDbGcpKeyId
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

extension ListOracleDbGcpKeysRequest: CustomStringConvertible {
    public var description: String { "ListOracleDbGcpKeysRequest()" }
}

// MARK: - ListOracleDbGcpKeysResponse

public struct ListOracleDbGcpKeysResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var oracleDbGcpKeySummaryCollection: OracleDbGcpKeySummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, oracleDbGcpKeySummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                oracleDbGcpKeySummaryCollection: OracleDbGcpKeySummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.oracleDbGcpKeySummaryCollection = oracleDbGcpKeySummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListOracleDbGcpKeysResponse: CustomStringConvertible {
    public var description: String { "ListOracleDbGcpKeysResponse()" }
}