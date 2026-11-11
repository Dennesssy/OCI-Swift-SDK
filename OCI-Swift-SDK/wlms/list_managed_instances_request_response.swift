import Foundation

// MARK: - ListManagedInstancesRequest

public struct ListManagedInstancesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var id: String?
    public var pluginStatus: ListManagedInstancesPluginStatusEnum?
    public var opcRequestId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListManagedInstancesSortOrderEnum?
    public var sortBy: ListManagedInstancesSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, id, pluginStatus, opcRequestId, limit, page, sortOrder, sortBy
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                id: String? = nil,
                pluginStatus: ListManagedInstancesPluginStatusEnum? = nil,
                opcRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListManagedInstancesSortOrderEnum? = nil,
                sortBy: ListManagedInstancesSortByEnum? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.id = id
        self.pluginStatus = pluginStatus
        self.opcRequestId = opcRequestId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListManagedInstancesRequest: CustomStringConvertible {
    public var description: String { "ListManagedInstancesRequest()" }
}

// MARK: - ListManagedInstancesResponse

public struct ListManagedInstancesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var managedInstanceCollection: ManagedInstanceCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, managedInstanceCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                managedInstanceCollection: ManagedInstanceCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.managedInstanceCollection = managedInstanceCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListManagedInstancesResponse: CustomStringConvertible {
    public var description: String { "ListManagedInstancesResponse()" }
}