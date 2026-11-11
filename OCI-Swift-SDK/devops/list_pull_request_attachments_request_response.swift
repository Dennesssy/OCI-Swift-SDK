import Foundation

// MARK: - ListPullRequestAttachmentsRequest

public struct ListPullRequestAttachmentsRequest: Codable, Sendable {
    public var pullRequestId: String?
    public var compartmentId: String?
    public var sortOrder: ListPullRequestAttachmentsSortOrderEnum?
    public var sortBy: ListPullRequestAttachmentsSortByEnum?
    public var fileName: String?
    public var limit: Int?
    public var page: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, compartmentId, sortOrder, sortBy, fileName, limit, page, opcRequestId
    }

    public init(
                pullRequestId: String? = nil,
                compartmentId: String? = nil,
                sortOrder: ListPullRequestAttachmentsSortOrderEnum? = nil,
                sortBy: ListPullRequestAttachmentsSortByEnum? = nil,
                fileName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.pullRequestId = pullRequestId
        self.compartmentId = compartmentId
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.fileName = fileName
        self.limit = limit
        self.page = page
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListPullRequestAttachmentsRequest: CustomStringConvertible {
    public var description: String { "ListPullRequestAttachmentsRequest()" }
}

// MARK: - ListPullRequestAttachmentsResponse

public struct ListPullRequestAttachmentsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var pullRequestAttachmentCollection: PullRequestAttachmentCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, pullRequestAttachmentCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                pullRequestAttachmentCollection: PullRequestAttachmentCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.pullRequestAttachmentCollection = pullRequestAttachmentCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListPullRequestAttachmentsResponse: CustomStringConvertible {
    public var description: String { "ListPullRequestAttachmentsResponse()" }
}