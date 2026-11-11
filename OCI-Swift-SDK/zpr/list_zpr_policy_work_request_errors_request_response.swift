import Foundation

// MARK: - ListZprPolicyWorkRequestErrorsRequest

public struct ListZprPolicyWorkRequestErrorsRequest: Codable, Sendable {
    public var workRequestId: String?
    public var opcRequestId: String?
    public var page: String?
    public var limit: Int?
    public var sortBy: ListZprPolicyWorkRequestErrorsSortByEnum?
    public var sortOrder: ListZprPolicyWorkRequestErrorsSortOrderEnum?

    private enum CodingKeys: String, CodingKey {
        case workRequestId, opcRequestId, page, limit, sortBy, sortOrder
    }

    public init(
                workRequestId: String? = nil,
                opcRequestId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                sortBy: ListZprPolicyWorkRequestErrorsSortByEnum? = nil,
                sortOrder: ListZprPolicyWorkRequestErrorsSortOrderEnum? = nil
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

extension ListZprPolicyWorkRequestErrorsRequest: CustomStringConvertible {
    public var description: String { "ListZprPolicyWorkRequestErrorsRequest()" }
}

// MARK: - ListZprPolicyWorkRequestErrorsResponse

public struct ListZprPolicyWorkRequestErrorsResponse: Codable, Sendable {
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

extension ListZprPolicyWorkRequestErrorsResponse: CustomStringConvertible {
    public var description: String { "ListZprPolicyWorkRequestErrorsResponse()" }
}