import Foundation

// MARK: - ListApiPlatformInstancesRequest

public struct ListApiPlatformInstancesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: ApiPlatformInstanceLifecycleStateEnum?
    public var name: String?
    public var id: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListApiPlatformInstancesSortOrderEnum?
    public var sortBy: ListApiPlatformInstancesSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, name, id, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: ApiPlatformInstanceLifecycleStateEnum? = nil,
                name: String? = nil,
                id: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListApiPlatformInstancesSortOrderEnum? = nil,
                sortBy: ListApiPlatformInstancesSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.name = name
        self.id = id
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

extension ListApiPlatformInstancesRequest: CustomStringConvertible {
    public var description: String { "ListApiPlatformInstancesRequest()" }
}

// MARK: - ListApiPlatformInstancesResponse

public struct ListApiPlatformInstancesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var apiPlatformInstanceCollection: ApiPlatformInstanceCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, apiPlatformInstanceCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                apiPlatformInstanceCollection: ApiPlatformInstanceCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.apiPlatformInstanceCollection = apiPlatformInstanceCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListApiPlatformInstancesResponse: CustomStringConvertible {
    public var description: String { "ListApiPlatformInstancesResponse()" }
}