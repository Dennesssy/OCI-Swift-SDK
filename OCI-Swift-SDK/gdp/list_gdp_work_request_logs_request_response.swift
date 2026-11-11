import Foundation

// MARK: - ListGdpWorkRequestLogsRequest

public struct ListGdpWorkRequestLogsRequest: Codable, Sendable {
    public var workRequestId: String?
    public var opcRequestId: String?
    public var page: String?
    public var limit: Int?
    public var sortBy: ListGdpWorkRequestLogsSortByEnum?
    public var sortOrder: ListGdpWorkRequestLogsSortOrderEnum?

    private enum CodingKeys: String, CodingKey {
        case workRequestId, opcRequestId, page, limit, sortBy, sortOrder
    }

    public init(
                workRequestId: String? = nil,
                opcRequestId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                sortBy: ListGdpWorkRequestLogsSortByEnum? = nil,
                sortOrder: ListGdpWorkRequestLogsSortOrderEnum? = nil
    ) {
        self.workRequestId = workRequestId
        self.opcRequestId = opcRequestId
        self.page = page
        self.limit = limit
        self.sortBy = sortBy
        self.sortOrder = sortOrder
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListGdpWorkRequestLogsRequest: CustomStringConvertible {
    public var description: String { "ListGdpWorkRequestLogsRequest()" }
}

// MARK: - ListGdpWorkRequestLogsResponse

public struct ListGdpWorkRequestLogsResponse: Codable, Sendable {
    public var opcNextPage: String?
    public var opcRequestId: String?
    public var workRequestLogEntryCollection: WorkRequestLogEntryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcNextPage, opcRequestId, workRequestLogEntryCollection
    }

    public init(
                opcNextPage: String? = nil,
                opcRequestId: String? = nil,
                workRequestLogEntryCollection: WorkRequestLogEntryCollection? = nil
    ) {
        self.opcNextPage = opcNextPage
        self.opcRequestId = opcRequestId
        self.workRequestLogEntryCollection = workRequestLogEntryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListGdpWorkRequestLogsResponse: CustomStringConvertible {
    public var description: String { "ListGdpWorkRequestLogsResponse()" }
}