import Foundation

// MARK: - ListMirrorRecordsRequest

public struct ListMirrorRecordsRequest: Codable, Sendable {
    public var repositoryId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListMirrorRecordsSortOrderEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, limit, page, sortOrder, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListMirrorRecordsSortOrderEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListMirrorRecordsRequest: CustomStringConvertible {
    public var description: String { "ListMirrorRecordsRequest()" }
}

// MARK: - ListMirrorRecordsResponse

public struct ListMirrorRecordsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var repositoryMirrorRecordCollection: RepositoryMirrorRecordCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, repositoryMirrorRecordCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                repositoryMirrorRecordCollection: RepositoryMirrorRecordCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.repositoryMirrorRecordCollection = repositoryMirrorRecordCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListMirrorRecordsResponse: CustomStringConvertible {
    public var description: String { "ListMirrorRecordsResponse()" }
}