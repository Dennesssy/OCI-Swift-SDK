import Foundation

// MARK: - ListCostTrackingTagsRequest

public struct ListCostTrackingTagsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var page: String?
    public var limit: Int?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, page, limit, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.page = page
        self.limit = limit
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListCostTrackingTagsRequest: CustomStringConvertible {
    public var description: String { "ListCostTrackingTagsRequest()" }
}

// MARK: - ListCostTrackingTagsResponse

public struct ListCostTrackingTagsResponse: Codable, Sendable {
    public var items: [Tag]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [Tag]? = nil,
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

extension ListCostTrackingTagsResponse: CustomStringConvertible {
    public var description: String { "ListCostTrackingTagsResponse()" }
}