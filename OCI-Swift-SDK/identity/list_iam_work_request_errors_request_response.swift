import Foundation

// MARK: - ListIamWorkRequestErrorsRequest

public struct ListIamWorkRequestErrorsRequest: Codable, Sendable {
    public var iamWorkRequestId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListIamWorkRequestErrorsSortOrderEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case iamWorkRequestId, limit, page, sortOrder, opcRequestId
    }

    public init(
                iamWorkRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListIamWorkRequestErrorsSortOrderEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.iamWorkRequestId = iamWorkRequestId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListIamWorkRequestErrorsRequest: CustomStringConvertible {
    public var description: String { "ListIamWorkRequestErrorsRequest()" }
}

// MARK: - ListIamWorkRequestErrorsResponse

public struct ListIamWorkRequestErrorsResponse: Codable, Sendable {
    public var items: [IamWorkRequestErrorSummary]?
    public var opcNextPage: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcNextPage, opcRequestId
    }

    public init(
                items: [IamWorkRequestErrorSummary]? = nil,
                opcNextPage: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.items = items
        self.opcNextPage = opcNextPage
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListIamWorkRequestErrorsResponse: CustomStringConvertible {
    public var description: String { "ListIamWorkRequestErrorsResponse()" }
}