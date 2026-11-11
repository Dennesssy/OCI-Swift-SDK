import Foundation

// MARK: - ListManagedInstanceScanResultsRequest

public struct ListManagedInstanceScanResultsRequest: Codable, Sendable {
    public var managedInstanceId: String?
    public var opcRequestId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListManagedInstanceScanResultsSortOrderEnum?
    public var sortBy: ListManagedInstanceScanResultsSortByEnum?
    public var wlsDomainId: String?
    public var serverName: String?

    private enum CodingKeys: String, CodingKey {
        case managedInstanceId, opcRequestId, limit, page, sortOrder, sortBy, wlsDomainId, serverName
    }

    public init(
                managedInstanceId: String? = nil,
                opcRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListManagedInstanceScanResultsSortOrderEnum? = nil,
                sortBy: ListManagedInstanceScanResultsSortByEnum? = nil,
                wlsDomainId: String? = nil,
                serverName: String? = nil
    ) {
        self.managedInstanceId = managedInstanceId
        self.opcRequestId = opcRequestId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.wlsDomainId = wlsDomainId
        self.serverName = serverName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListManagedInstanceScanResultsRequest: CustomStringConvertible {
    public var description: String { "ListManagedInstanceScanResultsRequest()" }
}

// MARK: - ListManagedInstanceScanResultsResponse

public struct ListManagedInstanceScanResultsResponse: Codable, Sendable {
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

extension ListManagedInstanceScanResultsResponse: CustomStringConvertible {
    public var description: String { "ListManagedInstanceScanResultsResponse()" }
}