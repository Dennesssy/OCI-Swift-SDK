import Foundation

// MARK: - ListWlsDomainServerInstalledPatchesRequest

public struct ListWlsDomainServerInstalledPatchesRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var serverId: String?
    public var opcRequestId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListWlsDomainServerInstalledPatchesSortOrderEnum?
    public var sortBy: ListWlsDomainServerInstalledPatchesSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, serverId, opcRequestId, limit, page, sortOrder, sortBy
    }

    public init(
                wlsDomainId: String? = nil,
                serverId: String? = nil,
                opcRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListWlsDomainServerInstalledPatchesSortOrderEnum? = nil,
                sortBy: ListWlsDomainServerInstalledPatchesSortByEnum? = nil
    ) {
        self.wlsDomainId = wlsDomainId
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

extension ListWlsDomainServerInstalledPatchesRequest: CustomStringConvertible {
    public var description: String { "ListWlsDomainServerInstalledPatchesRequest()" }
}

// MARK: - ListWlsDomainServerInstalledPatchesResponse

public struct ListWlsDomainServerInstalledPatchesResponse: Codable, Sendable {
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

extension ListWlsDomainServerInstalledPatchesResponse: CustomStringConvertible {
    public var description: String { "ListWlsDomainServerInstalledPatchesResponse()" }
}