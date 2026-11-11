import Foundation

// MARK: - ListWorkRequestLogsRequest

public struct ListWorkRequestLogsRequest: Codable, Sendable {
    public var workRequestId: String?
    public var opcRequestId: String?
    public var sortOrder: ListWorkRequestLogsSortOrderEnum?
    public var sortBy: ListWorkRequestLogsSortByEnum?
    public var page: String?
    public var limit: Int?

    private enum CodingKeys: String, CodingKey {
        case workRequestId, opcRequestId, sortOrder, sortBy, page, limit
    }

    public init(
                workRequestId: String? = nil,
                opcRequestId: String? = nil,
                sortOrder: ListWorkRequestLogsSortOrderEnum? = nil,
                sortBy: ListWorkRequestLogsSortByEnum? = nil,
                page: String? = nil,
                limit: Int? = nil
    ) {
        self.workRequestId = workRequestId
        self.opcRequestId = opcRequestId
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.page = page
        self.limit = limit
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWorkRequestLogsRequest: CustomStringConvertible {
    public var description: String { "ListWorkRequestLogsRequest()" }
}

// MARK: - ListWorkRequestLogsResponse

public struct ListWorkRequestLogsResponse: Codable, Sendable {
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

extension ListWorkRequestLogsResponse: CustomStringConvertible {
    public var description: String { "ListWorkRequestLogsResponse()" }
}