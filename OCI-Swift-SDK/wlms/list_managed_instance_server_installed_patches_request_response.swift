import Foundation

// MARK: - ListManagedInstanceServerInstalledPatchesRequest

public struct ListManagedInstanceServerInstalledPatchesRequest: Codable, Sendable {
    public var managedInstanceId: String?
    public var serverId: String?
    public var opcRequestId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListManagedInstanceServerInstalledPatchesSortOrderEnum?
    public var sortBy: ListManagedInstanceServerInstalledPatchesSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case managedInstanceId, serverId, opcRequestId, limit, page, sortOrder, sortBy
    }

    public init(
                managedInstanceId: String? = nil,
                serverId: String? = nil,
                opcRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListManagedInstanceServerInstalledPatchesSortOrderEnum? = nil,
                sortBy: ListManagedInstanceServerInstalledPatchesSortByEnum? = nil
    ) {
        self.managedInstanceId = managedInstanceId
        self.serverId = serverId
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

extension ListManagedInstanceServerInstalledPatchesRequest: CustomStringConvertible {
    public var description: String { "ListManagedInstanceServerInstalledPatchesRequest()" }
}

// MARK: - ListManagedInstanceServerInstalledPatchesResponse

public struct ListManagedInstanceServerInstalledPatchesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var installedPatchCollection: InstalledPatchCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, installedPatchCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                installedPatchCollection: InstalledPatchCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.installedPatchCollection = installedPatchCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListManagedInstanceServerInstalledPatchesResponse: CustomStringConvertible {
    public var description: String { "ListManagedInstanceServerInstalledPatchesResponse()" }
}