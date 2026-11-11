import Foundation

// MARK: - ListWlsDomainServerBackupsRequest

public struct ListWlsDomainServerBackupsRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var serverId: String?
    public var opcRequestId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListWlsDomainServerBackupsSortOrderEnum?
    public var sortBy: ListWlsDomainServerBackupsSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, serverId, opcRequestId, limit, page, sortOrder, sortBy
    }

    public init(
                wlsDomainId: String? = nil,
                serverId: String? = nil,
                opcRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListWlsDomainServerBackupsSortOrderEnum? = nil,
                sortBy: ListWlsDomainServerBackupsSortByEnum? = nil
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

extension ListWlsDomainServerBackupsRequest: CustomStringConvertible {
    public var description: String { "ListWlsDomainServerBackupsRequest()" }
}

// MARK: - ListWlsDomainServerBackupsResponse

public struct ListWlsDomainServerBackupsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var backupCollection: BackupCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, backupCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                backupCollection: BackupCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.backupCollection = backupCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWlsDomainServerBackupsResponse: CustomStringConvertible {
    public var description: String { "ListWlsDomainServerBackupsResponse()" }
}