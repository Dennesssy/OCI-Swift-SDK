import Foundation

// MARK: - ListProvisionedCapacitiesRequest

public struct ListProvisionedCapacitiesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var provisionedCapacityId: String?
    public var lifecycleState: ProvisionedCapacityLifecycleStateEnum?
    public var displayName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListProvisionedCapacitiesSortOrderEnum?
    public var sortBy: ListProvisionedCapacitiesSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, provisionedCapacityId, lifecycleState, displayName, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                provisionedCapacityId: String? = nil,
                lifecycleState: ProvisionedCapacityLifecycleStateEnum? = nil,
                displayName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListProvisionedCapacitiesSortOrderEnum? = nil,
                sortBy: ListProvisionedCapacitiesSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.provisionedCapacityId = provisionedCapacityId
        self.lifecycleState = lifecycleState
        self.displayName = displayName
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

extension ListProvisionedCapacitiesRequest: CustomStringConvertible {
    public var description: String { "ListProvisionedCapacitiesRequest()" }
}

// MARK: - ListProvisionedCapacitiesResponse

public struct ListProvisionedCapacitiesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var provisionedCapacityCollection: ProvisionedCapacityCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, provisionedCapacityCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                provisionedCapacityCollection: ProvisionedCapacityCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.provisionedCapacityCollection = provisionedCapacityCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListProvisionedCapacitiesResponse: CustomStringConvertible {
    public var description: String { "ListProvisionedCapacitiesResponse()" }
}