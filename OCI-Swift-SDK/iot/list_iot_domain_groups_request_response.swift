import Foundation

// MARK: - ListIotDomainGroupsRequest

public struct ListIotDomainGroupsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var id: String?
    public var displayName: String?
    public var lifecycleState: IotDomainGroupLifecycleStateEnum?
    public var type: IotDomainGroupTypeEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListIotDomainGroupsSortOrderEnum?
    public var sortBy: ListIotDomainGroupsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, id, displayName, lifecycleState, type, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                id: String? = nil,
                displayName: String? = nil,
                lifecycleState: IotDomainGroupLifecycleStateEnum? = nil,
                type: IotDomainGroupTypeEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListIotDomainGroupsSortOrderEnum? = nil,
                sortBy: ListIotDomainGroupsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.id = id
        self.displayName = displayName
        self.lifecycleState = lifecycleState
        self.type = type
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

extension ListIotDomainGroupsRequest: CustomStringConvertible {
    public var description: String { "ListIotDomainGroupsRequest()" }
}

// MARK: - ListIotDomainGroupsResponse

public struct ListIotDomainGroupsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var opcPrevPage: String?
    public var iotDomainGroupCollection: IotDomainGroupCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, opcPrevPage, iotDomainGroupCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                opcPrevPage: String? = nil,
                iotDomainGroupCollection: IotDomainGroupCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.opcPrevPage = opcPrevPage
        self.iotDomainGroupCollection = iotDomainGroupCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListIotDomainGroupsResponse: CustomStringConvertible {
    public var description: String { "ListIotDomainGroupsResponse()" }
}