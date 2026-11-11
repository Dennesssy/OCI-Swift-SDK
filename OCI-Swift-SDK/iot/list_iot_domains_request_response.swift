import Foundation

// MARK: - ListIotDomainsRequest

public struct ListIotDomainsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var id: String?
    public var iotDomainGroupId: String?
    public var displayName: String?
    public var lifecycleState: IotDomainLifecycleStateEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListIotDomainsSortOrderEnum?
    public var sortBy: ListIotDomainsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, id, iotDomainGroupId, displayName, lifecycleState, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                id: String? = nil,
                iotDomainGroupId: String? = nil,
                displayName: String? = nil,
                lifecycleState: IotDomainLifecycleStateEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListIotDomainsSortOrderEnum? = nil,
                sortBy: ListIotDomainsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.id = id
        self.iotDomainGroupId = iotDomainGroupId
        self.displayName = displayName
        self.lifecycleState = lifecycleState
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

extension ListIotDomainsRequest: CustomStringConvertible {
    public var description: String { "ListIotDomainsRequest()" }
}

// MARK: - ListIotDomainsResponse

public struct ListIotDomainsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var opcPrevPage: String?
    public var iotDomainCollection: IotDomainCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, opcPrevPage, iotDomainCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                opcPrevPage: String? = nil,
                iotDomainCollection: IotDomainCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.opcPrevPage = opcPrevPage
        self.iotDomainCollection = iotDomainCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListIotDomainsResponse: CustomStringConvertible {
    public var description: String { "ListIotDomainsResponse()" }
}