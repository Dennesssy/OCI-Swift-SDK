import Foundation

// MARK: - ListObjectStorageLinksRequest

public struct ListObjectStorageLinksRequest: Codable, Sendable {
    public var compartmentId: String?
    public var availabilityDomain: String?
    public var lifecycleState: ObjectStorageLinkLifecycleStateEnum?
    public var displayName: String?
    public var id: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListObjectStorageLinksSortOrderEnum?
    public var sortBy: ListObjectStorageLinksSortByEnum?
    public var lustreFileSystemId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, availabilityDomain, lifecycleState, displayName, id, limit, page, sortOrder, sortBy, lustreFileSystemId, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                availabilityDomain: String? = nil,
                lifecycleState: ObjectStorageLinkLifecycleStateEnum? = nil,
                displayName: String? = nil,
                id: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListObjectStorageLinksSortOrderEnum? = nil,
                sortBy: ListObjectStorageLinksSortByEnum? = nil,
                lustreFileSystemId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.availabilityDomain = availabilityDomain
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.id = id
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.lustreFileSystemId = lustreFileSystemId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListObjectStorageLinksRequest: CustomStringConvertible {
    public var description: String { "ListObjectStorageLinksRequest()" }
}

// MARK: - ListObjectStorageLinksResponse

public struct ListObjectStorageLinksResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var objectStorageLinkCollection: ObjectStorageLinkCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, objectStorageLinkCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                objectStorageLinkCollection: ObjectStorageLinkCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.objectStorageLinkCollection = objectStorageLinkCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListObjectStorageLinksResponse: CustomStringConvertible {
    public var description: String { "ListObjectStorageLinksResponse()" }
}