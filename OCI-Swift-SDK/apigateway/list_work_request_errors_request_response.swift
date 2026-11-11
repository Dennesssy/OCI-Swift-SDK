import Foundation

// MARK: - ListWorkRequestErrorsRequest

public struct ListWorkRequestErrorsRequest: Codable, Sendable {
    public var workRequestId: String?
    public var opcRequestId: String?
    public var page: String?
    public var limit: Int?
    public var sortOrder: ListWorkRequestErrorsSortOrderEnum?
    public var sortBy: ListWorkRequestErrorsSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case workRequestId, opcRequestId, page, limit, sortOrder, sortBy
    }

    public init(
                workRequestId: String? = nil,
                opcRequestId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                sortOrder: ListWorkRequestErrorsSortOrderEnum? = nil,
                sortBy: ListWorkRequestErrorsSortByEnum? = nil
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

extension ListWorkRequestErrorsRequest: CustomStringConvertible {
    public var description: String { "ListWorkRequestErrorsRequest()" }
}

// MARK: - ListWorkRequestErrorsResponse

public struct ListWorkRequestErrorsResponse: Codable, Sendable {
    public var opcNextPage: String?
    public var opcPrevPage: String?
    public var opcRequestId: String?
    public var workRequestErrorCollection: WorkRequestErrorCollection?

    private enum CodingKeys: String, CodingKey {
        case opcNextPage, opcPrevPage, opcRequestId, workRequestErrorCollection
    }

    public init(
                opcNextPage: String? = nil,
                opcPrevPage: String? = nil,
                opcRequestId: String? = nil,
                workRequestErrorCollection: WorkRequestErrorCollection? = nil
    ) {
        self.opcNextPage = opcNextPage
        self.opcPrevPage = opcPrevPage
        self.opcRequestId = opcRequestId
        self.workRequestErrorCollection = workRequestErrorCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWorkRequestErrorsResponse: CustomStringConvertible {
    public var description: String { "ListWorkRequestErrorsResponse()" }
}