import Foundation

// MARK: - ListLustreFileSystemsRequest

public struct ListLustreFileSystemsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var availabilityDomain: String?
    public var lifecycleState: LustreFileSystemLifecycleStateEnum?
    public var displayName: String?
    public var id: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListLustreFileSystemsSortOrderEnum?
    public var sortBy: ListLustreFileSystemsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, availabilityDomain, lifecycleState, displayName, id, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                availabilityDomain: String? = nil,
                lifecycleState: LustreFileSystemLifecycleStateEnum? = nil,
                displayName: String? = nil,
                id: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListLustreFileSystemsSortOrderEnum? = nil,
                sortBy: ListLustreFileSystemsSortByEnum? = nil,
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
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListLustreFileSystemsRequest: CustomStringConvertible {
    public var description: String { "ListLustreFileSystemsRequest()" }
}

// MARK: - ListLustreFileSystemsResponse

public struct ListLustreFileSystemsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var lustreFileSystemCollection: LustreFileSystemCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, lustreFileSystemCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                lustreFileSystemCollection: LustreFileSystemCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.lustreFileSystemCollection = lustreFileSystemCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListLustreFileSystemsResponse: CustomStringConvertible {
    public var description: String { "ListLustreFileSystemsResponse()" }
}