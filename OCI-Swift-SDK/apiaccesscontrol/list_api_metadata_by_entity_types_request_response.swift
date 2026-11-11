import Foundation

// MARK: - ListApiMetadataByEntityTypesRequest

public struct ListApiMetadataByEntityTypesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: ApiMetadataLifecycleStateEnum?
    public var resourceType: String?
    public var displayName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListApiMetadataByEntityTypesSortOrderEnum?
    public var sortBy: ListApiMetadataByEntityTypesSortByEnum?
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
                sortOrder: ListApiMetadataByEntityTypesSortOrderEnum? = nil,
                sortBy: ListApiMetadataByEntityTypesSortByEnum? = nil,
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

extension ListApiMetadataByEntityTypesRequest: CustomStringConvertible {
    public var description: String { "ListApiMetadataByEntityTypesRequest()" }
}

// MARK: - ListApiMetadataByEntityTypesResponse

public struct ListApiMetadataByEntityTypesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var apiMetadataByEntityTypeCollection: ApiMetadataByEntityTypeCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, apiMetadataByEntityTypeCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                apiMetadataByEntityTypeCollection: ApiMetadataByEntityTypeCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.apiMetadataByEntityTypeCollection = apiMetadataByEntityTypeCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListApiMetadataByEntityTypesResponse: CustomStringConvertible {
    public var description: String { "ListApiMetadataByEntityTypesResponse()" }
}