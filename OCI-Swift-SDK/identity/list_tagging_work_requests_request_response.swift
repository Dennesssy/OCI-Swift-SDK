import Foundation

// MARK: - ListTaggingWorkRequestsRequest

public struct ListTaggingWorkRequestsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var page: String?
    public var limit: Int?
    public var resourceIdentifier: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, page, limit, resourceIdentifier, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                resourceIdentifier: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.page = page
        self.limit = limit
        self.resourceIdentifier = resourceIdentifier
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListTaggingWorkRequestsRequest: CustomStringConvertible {
    public var description: String { "ListTaggingWorkRequestsRequest()" }
}

// MARK: - ListTaggingWorkRequestsResponse

public struct ListTaggingWorkRequestsResponse: Codable, Sendable {
    public var items: [TaggingWorkRequestSummary]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [TaggingWorkRequestSummary]? = nil,
                opcRequestId: String? = nil,
                opcNextPage: String? = nil
    ) {
        self.items = items
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListTaggingWorkRequestsResponse: CustomStringConvertible {
    public var description: String { "ListTaggingWorkRequestsResponse()" }
}