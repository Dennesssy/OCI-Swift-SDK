import Foundation

// MARK: - ListWlsDomainScanResultsRequest

public struct ListWlsDomainScanResultsRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var serverName: String?
    public var opcRequestId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListWlsDomainScanResultsSortOrderEnum?
    public var sortBy: ListWlsDomainScanResultsSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, serverName, opcRequestId, limit, page, sortOrder, sortBy
    }

    public init(
                wlsDomainId: String? = nil,
                serverName: String? = nil,
                opcRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListWlsDomainScanResultsSortOrderEnum? = nil,
                sortBy: ListWlsDomainScanResultsSortByEnum? = nil
    ) {
        self.wlsDomainId = wlsDomainId
        self.serverName = serverName
        self.opcRequestId = opcRequestId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWlsDomainScanResultsRequest: CustomStringConvertible {
    public var description: String { "ListWlsDomainScanResultsRequest()" }
}

// MARK: - ListWlsDomainScanResultsResponse

public struct ListWlsDomainScanResultsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var scanResultCollection: ScanResultCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, scanResultCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                scanResultCollection: ScanResultCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.scanResultCollection = scanResultCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWlsDomainScanResultsResponse: CustomStringConvertible {
    public var description: String { "ListWlsDomainScanResultsResponse()" }
}