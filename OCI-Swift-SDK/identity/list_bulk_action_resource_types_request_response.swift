import Foundation

// MARK: - ListBulkActionResourceTypesRequest

public struct ListBulkActionResourceTypesRequest: Codable, Sendable {
    public var bulkActionType: ListBulkActionResourceTypesBulkActionTypeEnum
    public var page: String?
    public var limit: Int?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case bulkActionType, page, limit, opcRequestId
    }

    public init(
                bulkActionType: ListBulkActionResourceTypesBulkActionTypeEnum,
                page: String? = nil,
                limit: Int? = nil,
                opcRequestId: String? = nil
    ) {
        self.bulkActionType = bulkActionType
        self.page = page
        self.limit = limit
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListBulkActionResourceTypesRequest: CustomStringConvertible {
    public var description: String { "ListBulkActionResourceTypesRequest()" }
}

// MARK: - ListBulkActionResourceTypesResponse

public struct ListBulkActionResourceTypesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var bulkActionResourceTypeCollection: BulkActionResourceTypeCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, bulkActionResourceTypeCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                bulkActionResourceTypeCollection: BulkActionResourceTypeCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.bulkActionResourceTypeCollection = bulkActionResourceTypeCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListBulkActionResourceTypesResponse: CustomStringConvertible {
    public var description: String { "ListBulkActionResourceTypesResponse()" }
}