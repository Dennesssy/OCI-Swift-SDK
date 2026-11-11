import Foundation

// MARK: - ListWlsDomainsRequest

public struct ListWlsDomainsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: WlsDomainLifecycleStateEnum?
    public var displayName: String?
    public var id: String?
    public var weblogicVersion: ListWlsDomainsWeblogicVersionEnum?
    public var middlewareType: ListWlsDomainsMiddlewareTypeEnum?
    public var patchReadinessStatus: ListWlsDomainsPatchReadinessStatusEnum?
    public var opcRequestId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListWlsDomainsSortOrderEnum?
    public var sortBy: ListWlsDomainsSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, displayName, id, weblogicVersion, middlewareType, patchReadinessStatus, opcRequestId, limit, page, sortOrder, sortBy
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: WlsDomainLifecycleStateEnum? = nil,
                displayName: String? = nil,
                id: String? = nil,
                weblogicVersion: ListWlsDomainsWeblogicVersionEnum? = nil,
                middlewareType: ListWlsDomainsMiddlewareTypeEnum? = nil,
                patchReadinessStatus: ListWlsDomainsPatchReadinessStatusEnum? = nil,
                opcRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListWlsDomainsSortOrderEnum? = nil,
                sortBy: ListWlsDomainsSortByEnum? = nil
    ) {
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.id = id
        self.weblogicVersion = weblogicVersion
        self.middlewareType = middlewareType
        self.patchReadinessStatus = patchReadinessStatus
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

extension ListWlsDomainsRequest: CustomStringConvertible {
    public var description: String { "ListWlsDomainsRequest()" }
}

// MARK: - ListWlsDomainsResponse

public struct ListWlsDomainsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var wlsDomainCollection: WlsDomainCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, wlsDomainCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                wlsDomainCollection: WlsDomainCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.wlsDomainCollection = wlsDomainCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWlsDomainsResponse: CustomStringConvertible {
    public var description: String { "ListWlsDomainsResponse()" }
}