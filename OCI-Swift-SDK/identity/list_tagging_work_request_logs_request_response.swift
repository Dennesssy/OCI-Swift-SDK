import Foundation

// MARK: - ListTaggingWorkRequestLogsRequest

public struct ListTaggingWorkRequestLogsRequest: Codable, Sendable {
    public var workRequestId: String?
    public var page: String?
    public var limit: Int?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case workRequestId, page, limit, opcRequestId
    }

    public init(
                workRequestId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                opcRequestId: String? = nil
    ) {
        self.workRequestId = workRequestId
        self.page = page
        self.limit = limit
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListTaggingWorkRequestLogsRequest: CustomStringConvertible {
    public var description: String { "ListTaggingWorkRequestLogsRequest()" }
}

// MARK: - ListTaggingWorkRequestLogsResponse

public struct ListTaggingWorkRequestLogsResponse: Codable, Sendable {
    public var items: [TaggingWorkRequestLogSummary]?
    public var opcRequestId: String?
    public var retryAfter: Float?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, retryAfter, opcNextPage
    }

    public init(
                items: [TaggingWorkRequestLogSummary]? = nil,
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

extension ListTaggingWorkRequestLogsResponse: CustomStringConvertible {
    public var description: String { "ListTaggingWorkRequestLogsResponse()" }
}