import Foundation

// MARK: - ListWorkRequestErrorsRequest

public struct ListWorkRequestErrorsRequest: Codable, Sendable {
    public var workRequestId: String?
    public var opcRequestId: String?
    public var sortOrder: ListWorkRequestErrorsSortOrderEnum?
    public var sortBy: ListWorkRequestErrorsSortByEnum?
    public var page: String?
    public var limit: Int?

    private enum CodingKeys: String, CodingKey {
        case workRequestId, opcRequestId, sortOrder, sortBy, page, limit
    }

    public init(
                workRequestId: String? = nil,
                opcRequestId: String? = nil,
                sortOrder: ListWorkRequestErrorsSortOrderEnum? = nil,
                sortBy: ListWorkRequestErrorsSortByEnum? = nil,
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

extension ListWorkRequestErrorsRequest: CustomStringConvertible {
    public var description: String { "ListWorkRequestErrorsRequest()" }
}

// MARK: - ListWorkRequestErrorsResponse

public struct ListWorkRequestErrorsResponse: Codable, Sendable {
    public var opcNextPage: String?
    public var opcRequestId: String?
    public var workRequestErrorCollection: WorkRequestErrorCollection?

    private enum CodingKeys: String, CodingKey {
        case opcNextPage, opcRequestId, workRequestErrorCollection
    }

    public init(
                opcNextPage: String? = nil,
                opcRequestId: String? = nil,
                workRequestErrorCollection: WorkRequestErrorCollection? = nil
    ) {
        self.opcNextPage = opcNextPage
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