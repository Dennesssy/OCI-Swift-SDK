import Foundation

// MARK: - ListIamWorkRequestLogsRequest

public struct ListIamWorkRequestLogsRequest: Codable, Sendable {
    public var iamWorkRequestId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListIamWorkRequestLogsSortOrderEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case iamWorkRequestId, limit, page, sortOrder, opcRequestId
    }

    public init(
                iamWorkRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListIamWorkRequestLogsSortOrderEnum? = nil,
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

extension ListIamWorkRequestLogsRequest: CustomStringConvertible {
    public var description: String { "ListIamWorkRequestLogsRequest()" }
}

// MARK: - ListIamWorkRequestLogsResponse

public struct ListIamWorkRequestLogsResponse: Codable, Sendable {
    public var items: [IamWorkRequestLogSummary]?
    public var opcRequestId: String?
    public var retryAfter: Float?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, retryAfter, opcNextPage
    }

    public init(
                items: [IamWorkRequestLogSummary]? = nil,
                opcRequestId: String? = nil,
                retryAfter: Float? = nil,
                opcNextPage: String? = nil
    ) {
        self.items = items
        self.opcRequestId = opcRequestId
        self.retryAfter = retryAfter
        self.opcNextPage = opcNextPage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListIamWorkRequestLogsResponse: CustomStringConvertible {
    public var description: String { "ListIamWorkRequestLogsResponse()" }
}