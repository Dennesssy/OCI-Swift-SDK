import Foundation

// MARK: - ListWorkRequestLogsRequest

public struct ListWorkRequestLogsRequest: Codable, Sendable {
    public var workRequestId: String?
    public var opcRequestId: String?
    public var page: String?
    public var limit: Int?
    public var sortBy: ListWorkRequestLogsSortByEnum?
    public var sortOrder: ListWorkRequestLogsSortOrderEnum?

    private enum CodingKeys: String, CodingKey {
        case workRequestId, opcRequestId, page, limit, sortBy, sortOrder
    }

    public init(
                workRequestId: String? = nil,
                opcRequestId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                sortBy: ListWorkRequestLogsSortByEnum? = nil,
                sortOrder: ListWorkRequestLogsSortOrderEnum? = nil
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

extension ListWorkRequestLogsRequest: CustomStringConvertible {
    public var description: String { "ListWorkRequestLogsRequest()" }
}

// MARK: - ListWorkRequestLogsResponse

public struct ListWorkRequestLogsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var opcPrevPage: String?
    public var workRequestLogEntryCollection: WorkRequestLogEntryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, opcPrevPage, workRequestLogEntryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                opcPrevPage: String? = nil,
                workRequestLogEntryCollection: WorkRequestLogEntryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.opcPrevPage = opcPrevPage
        self.workRequestLogEntryCollection = workRequestLogEntryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWorkRequestLogsResponse: CustomStringConvertible {
    public var description: String { "ListWorkRequestLogsResponse()" }
}