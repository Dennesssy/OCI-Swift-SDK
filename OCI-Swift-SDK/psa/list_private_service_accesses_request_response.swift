import Foundation

// MARK: - ListPrivateServiceAccessesRequest

public struct ListPrivateServiceAccessesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: PrivateServiceAccessLifecycleStateEnum?
    public var displayName: String?
    public var id: String?
    public var vcnId: String?
    public var serviceId: String?
    public var limit: Int?
    public var page: String?
    public var sortBy: ListPrivateServiceAccessesSortByEnum?
    public var sortOrder: ListPrivateServiceAccessesSortOrderEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, displayName, id, vcnId, serviceId, limit, page, sortBy, sortOrder, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: PrivateServiceAccessLifecycleStateEnum? = nil,
                displayName: String? = nil,
                id: String? = nil,
                vcnId: String? = nil,
                serviceId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortBy: ListPrivateServiceAccessesSortByEnum? = nil,
                sortOrder: ListPrivateServiceAccessesSortOrderEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.id = id
        self.vcnId = vcnId
        self.serviceId = serviceId
        self.limit = limit
        self.page = page
        self.sortBy = sortBy
        self.sortOrder = sortOrder
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListPrivateServiceAccessesRequest: CustomStringConvertible {
    public var description: String { "ListPrivateServiceAccessesRequest()" }
}

// MARK: - ListPrivateServiceAccessesResponse

public struct ListPrivateServiceAccessesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var privateServiceAccessCollection: PrivateServiceAccessCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, privateServiceAccessCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                privateServiceAccessCollection: PrivateServiceAccessCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.privateServiceAccessCollection = privateServiceAccessCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListPrivateServiceAccessesResponse: CustomStringConvertible {
    public var description: String { "ListPrivateServiceAccessesResponse()" }
}