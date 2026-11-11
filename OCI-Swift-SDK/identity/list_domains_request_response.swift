import Foundation

// MARK: - ListDomainsRequest

public struct ListDomainsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var url: String?
    public var homeRegionUrl: String?
    public var type: String?
    public var licenseType: String?
    public var isHiddenOnLogin: Bool?
    public var page: String?
    public var limit: Int?
    public var name: String?
    public var sortBy: ListDomainsSortByEnum?
    public var sortOrder: ListDomainsSortOrderEnum?
    public var opcRequestId: String?
    public var lifecycleState: DomainLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, url, homeRegionUrl, type, licenseType, isHiddenOnLogin, page, limit, name, sortBy, sortOrder, opcRequestId, lifecycleState
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                url: String? = nil,
                homeRegionUrl: String? = nil,
                type: String? = nil,
                licenseType: String? = nil,
                isHiddenOnLogin: Bool? = nil,
                page: String? = nil,
                limit: Int? = nil,
                name: String? = nil,
                sortBy: ListDomainsSortByEnum? = nil,
                sortOrder: ListDomainsSortOrderEnum? = nil,
                opcRequestId: String? = nil,
                lifecycleState: DomainLifecycleStateEnum? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.url = url
        self.homeRegionUrl = homeRegionUrl
        self.type = type
        self.licenseType = licenseType
        self.isHiddenOnLogin = isHiddenOnLogin
        self.page = page
        self.limit = limit
        self.name = name
        self.sortBy = sortBy
        self.sortOrder = sortOrder
        self.opcRequestId = opcRequestId
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDomainsRequest: CustomStringConvertible {
    public var description: String { "ListDomainsRequest()" }
}

// MARK: - ListDomainsResponse

public struct ListDomainsResponse: Codable, Sendable {
    public var items: [DomainSummary]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [DomainSummary]? = nil,
                opcRequestId: String? = nil,
                opcNextPage: String? = nil
    ) {
        self.items = items
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDomainsResponse: CustomStringConvertible {
    public var description: String { "ListDomainsResponse()" }
}