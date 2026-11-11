import Foundation

// MARK: - ListBulkEditTagsResourceTypesRequest

public struct ListBulkEditTagsResourceTypesRequest: Codable, Sendable {
    public var page: String?
    public var limit: Int?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case page, limit, opcRequestId
    }

    public init(
                page: String? = nil,
                limit: Int? = nil,
                opcRequestId: String? = nil
    ) {
        self.page = page
        self.limit = limit
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListBulkEditTagsResourceTypesRequest: CustomStringConvertible {
    public var description: String { "ListBulkEditTagsResourceTypesRequest()" }
}

// MARK: - ListBulkEditTagsResourceTypesResponse

public struct ListBulkEditTagsResourceTypesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var bulkEditTagsResourceTypeCollection: BulkEditTagsResourceTypeCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, bulkEditTagsResourceTypeCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                bulkEditTagsResourceTypeCollection: BulkEditTagsResourceTypeCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.bulkEditTagsResourceTypeCollection = bulkEditTagsResourceTypeCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListBulkEditTagsResourceTypesResponse: CustomStringConvertible {
    public var description: String { "ListBulkEditTagsResourceTypesResponse()" }
}