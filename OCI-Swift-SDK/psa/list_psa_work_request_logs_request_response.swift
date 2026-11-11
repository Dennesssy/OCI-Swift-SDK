import Foundation

// MARK: - ListPsaWorkRequestLogsRequest

public struct ListPsaWorkRequestLogsRequest: Codable, Sendable {
    public var workRequestId: String?
    public var opcRequestId: String?
    public var page: String?
    public var limit: Int?
    public var sortBy: ListPsaWorkRequestLogsSortByEnum?
    public var sortOrder: ListPsaWorkRequestLogsSortOrderEnum?

    private enum CodingKeys: String, CodingKey {
        case workRequestId, opcRequestId, page, limit, sortBy, sortOrder
    }

    public init(
                workRequestId: String? = nil,
                opcRequestId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                sortBy: ListPsaWorkRequestLogsSortByEnum? = nil,
                sortOrder: ListPsaWorkRequestLogsSortOrderEnum? = nil
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

extension ListPsaWorkRequestLogsRequest: CustomStringConvertible {
    public var description: String { "ListPsaWorkRequestLogsRequest()" }
}

// MARK: - ListPsaWorkRequestLogsResponse

public struct ListPsaWorkRequestLogsResponse: Codable, Sendable {
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

extension ListPsaWorkRequestLogsResponse: CustomStringConvertible {
    public var description: String { "ListPsaWorkRequestLogsResponse()" }
}