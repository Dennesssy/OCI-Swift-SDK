import Foundation

// MARK: - ListWorkItemsRequest

public struct ListWorkItemsRequest: Codable, Sendable {
    public var workRequestId: String?
    public var opcRequestId: String?
    public var page: String?
    public var limit: Int?

    private enum CodingKeys: String, CodingKey {
        case workRequestId, opcRequestId, page, limit
    }

    public init(
                workRequestId: String? = nil,
                opcRequestId: String? = nil,
                page: String? = nil,
                limit: Int? = nil
    ) {
        self.workRequestId = workRequestId
        self.opcRequestId = opcRequestId
        self.page = page
        self.limit = limit
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWorkItemsRequest: CustomStringConvertible {
    public var description: String { "ListWorkItemsRequest()" }
}

// MARK: - ListWorkItemsResponse

public struct ListWorkItemsResponse: Codable, Sendable {
    public var opcNextPage: String?
    public var opcRequestId: String?
    public var workItemCollection: WorkItemCollection?

    private enum CodingKeys: String, CodingKey {
        case opcNextPage, opcRequestId, workItemCollection
    }

    public init(
                opcNextPage: String? = nil,
                opcRequestId: String? = nil,
                workItemCollection: WorkItemCollection? = nil
    ) {
        self.opcNextPage = opcNextPage
        self.opcRequestId = opcRequestId
        self.workItemCollection = workItemCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWorkItemsResponse: CustomStringConvertible {
    public var description: String { "ListWorkItemsResponse()" }
}