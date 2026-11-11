import Foundation

// MARK: - ListApiMetadataRequest

public struct ListApiMetadataRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: ApiMetadataLifecycleStateEnum?
    public var resourceType: String?
    public var displayName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListApiMetadataSortOrderEnum?
    public var sortBy: ListApiMetadataSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, resourceType, displayName, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: ApiMetadataLifecycleStateEnum? = nil,
                resourceType: String? = nil,
                displayName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListApiMetadataSortOrderEnum? = nil,
                sortBy: ListApiMetadataSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.resourceType = resourceType
        self.displayName = displayName
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

extension ListApiMetadataRequest: CustomStringConvertible {
    public var description: String { "ListApiMetadataRequest()" }
}

// MARK: - ListApiMetadataResponse

public struct ListApiMetadataResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var apiMetadataCollection: ApiMetadataCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, apiMetadataCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                apiMetadataCollection: ApiMetadataCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.apiMetadataCollection = apiMetadataCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListApiMetadataResponse: CustomStringConvertible {
    public var description: String { "ListApiMetadataResponse()" }
}