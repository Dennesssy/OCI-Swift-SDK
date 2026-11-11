import Foundation

// MARK: - ListMultiCloudMetadataRequest

public struct ListMultiCloudMetadataRequest: Codable, Sendable {
    public var compartmentId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListMultiCloudMetadataSortOrderEnum?
    public var sortBy: ListMultiCloudMetadataSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListMultiCloudMetadataSortOrderEnum? = nil,
                sortBy: ListMultiCloudMetadataSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListMultiCloudMetadataRequest: CustomStringConvertible {
    public var description: String { "ListMultiCloudMetadataRequest()" }
}

// MARK: - ListMultiCloudMetadataResponse

public struct ListMultiCloudMetadataResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var multiCloudMetadataCollection: MultiCloudMetadataCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, multiCloudMetadataCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                multiCloudMetadataCollection: MultiCloudMetadataCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.multiCloudMetadataCollection = multiCloudMetadataCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListMultiCloudMetadataResponse: CustomStringConvertible {
    public var description: String { "ListMultiCloudMetadataResponse()" }
}