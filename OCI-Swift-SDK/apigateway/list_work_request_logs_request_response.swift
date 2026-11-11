import Foundation

// MARK: - ListWorkRequestLogsRequest

public struct ListWorkRequestLogsRequest: Codable, Sendable {
    public var workRequestId: String?
    public var opcRequestId: String?
    public var page: String?
    public var limit: Int?
    public var sortOrder: ListWorkRequestLogsSortOrderEnum?
    public var sortBy: ListWorkRequestLogsSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case workRequestId, opcRequestId, page, limit, sortOrder, sortBy
    }

    public init(
                workRequestId: String? = nil,
                opcRequestId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                sortOrder: ListWorkRequestLogsSortOrderEnum? = nil,
                sortBy: ListWorkRequestLogsSortByEnum? = nil
    ) {
        self.workRequestId = workRequestId
        self.opcRequestId = opcRequestId
        self.page = page
        self.limit = limit
        self.sortOrder = sortOrder
        self.sortBy = sortBy
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
    public var opcPrevPage: String?
    public var opcRequestId: String?
    public var workRequestLogCollection: WorkRequestLogCollection?

    private enum CodingKeys: String, CodingKey {
        case opcNextPage, opcPrevPage, opcRequestId, workRequestLogCollection
    }

    public init(
                opcNextPage: String? = nil,
                opcPrevPage: String? = nil,
                opcRequestId: String? = nil,
                workRequestLogCollection: WorkRequestLogCollection? = nil
    ) {
        self.opcNextPage = opcNextPage
        self.opcPrevPage = opcPrevPage
        self.opcRequestId = opcRequestId
        self.workRequestLogCollection = workRequestLogCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWorkRequestLogsResponse: CustomStringConvertible {
    public var description: String { "ListWorkRequestLogsResponse()" }
}