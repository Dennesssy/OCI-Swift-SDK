import Foundation

// MARK: - ListZprConfigurationWorkRequestErrorsRequest

public struct ListZprConfigurationWorkRequestErrorsRequest: Codable, Sendable {
    public var workRequestId: String?
    public var opcRequestId: String?
    public var page: String?
    public var limit: Int?
    public var sortBy: ListZprConfigurationWorkRequestErrorsSortByEnum?
    public var sortOrder: ListZprConfigurationWorkRequestErrorsSortOrderEnum?

    private enum CodingKeys: String, CodingKey {
        case workRequestId, opcRequestId, page, limit, sortBy, sortOrder
    }

    public init(
                workRequestId: String? = nil,
                opcRequestId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                sortBy: ListZprConfigurationWorkRequestErrorsSortByEnum? = nil,
                sortOrder: ListZprConfigurationWorkRequestErrorsSortOrderEnum? = nil
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

extension ListZprConfigurationWorkRequestErrorsRequest: CustomStringConvertible {
    public var description: String { "ListZprConfigurationWorkRequestErrorsRequest()" }
}

// MARK: - ListZprConfigurationWorkRequestErrorsResponse

public struct ListZprConfigurationWorkRequestErrorsResponse: Codable, Sendable {
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

extension ListZprConfigurationWorkRequestErrorsResponse: CustomStringConvertible {
    public var description: String { "ListZprConfigurationWorkRequestErrorsResponse()" }
}