import Foundation

// MARK: - ListManagedInstanceServersRequest

public struct ListManagedInstanceServersRequest: Codable, Sendable {
    public var managedInstanceId: String?
    public var name: String?
    public var opcRequestId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListManagedInstanceServersSortOrderEnum?
    public var sortBy: ListManagedInstanceServersSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case managedInstanceId, name, opcRequestId, limit, page, sortOrder, sortBy
    }

    public init(
                managedInstanceId: String? = nil,
                name: String? = nil,
                opcRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListManagedInstanceServersSortOrderEnum? = nil,
                sortBy: ListManagedInstanceServersSortByEnum? = nil
    ) {
        self.managedInstanceId = managedInstanceId
        self.name = name
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

extension ListManagedInstanceServersRequest: CustomStringConvertible {
    public var description: String { "ListManagedInstanceServersRequest()" }
}

// MARK: - ListManagedInstanceServersResponse

public struct ListManagedInstanceServersResponse: Codable, Sendable {
    public var opcNextPage: String?
    public var opcRequestId: String?
    public var serverCollection: ServerCollection?

    private enum CodingKeys: String, CodingKey {
        case opcNextPage, opcRequestId, serverCollection
    }

    public init(
                opcNextPage: String? = nil,
                opcRequestId: String? = nil,
                serverCollection: ServerCollection? = nil
    ) {
        self.opcNextPage = opcNextPage
        self.opcRequestId = opcRequestId
        self.serverCollection = serverCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListManagedInstanceServersResponse: CustomStringConvertible {
    public var description: String { "ListManagedInstanceServersResponse()" }
}