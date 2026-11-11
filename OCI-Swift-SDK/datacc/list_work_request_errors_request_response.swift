import Foundation

// MARK: - ListWorkRequestErrorsRequest

public struct ListWorkRequestErrorsRequest: Codable, Sendable {
    public var workRequestId: String?
    public var opcRequestId: String?
    public var page: String?
    public var limit: Int?
    public var sortOrder: ListWorkRequestErrorsSortOrderEnum?

    private enum CodingKeys: String, CodingKey {
        case workRequestId, opcRequestId, page, limit, sortOrder
    }

    public init(
                workRequestId: String? = nil,
                opcRequestId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                sortOrder: ListWorkRequestErrorsSortOrderEnum? = nil
    ) {
        self.workRequestId = workRequestId
        self.opcRequestId = opcRequestId
        self.page = page
        self.limit = limit
        self.sortOrder = sortOrder
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
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var workRequestErrorCollection: WorkRequestErrorCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, workRequestErrorCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                workRequestErrorCollection: WorkRequestErrorCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.workRequestErrorCollection = workRequestErrorCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWorkRequestErrorsResponse: CustomStringConvertible {
    public var description: String { "ListWorkRequestErrorsResponse()" }
}