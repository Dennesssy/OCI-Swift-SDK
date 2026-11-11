import Foundation

// MARK: - ListUsagePlansRequest

public struct ListUsagePlansRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var lifecycleState: UsagePlanLifecycleStateEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListUsagePlansSortOrderEnum?
    public var sortBy: ListUsagePlansSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, lifecycleState, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                lifecycleState: UsagePlanLifecycleStateEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListUsagePlansSortOrderEnum? = nil,
                sortBy: ListUsagePlansSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
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

extension ListUsagePlansRequest: CustomStringConvertible {
    public var description: String { "ListUsagePlansRequest()" }
}

// MARK: - ListUsagePlansResponse

public struct ListUsagePlansResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var opcPrevPage: String?
    public var usagePlanCollection: UsagePlanCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, opcPrevPage, usagePlanCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                opcPrevPage: String? = nil,
                usagePlanCollection: UsagePlanCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.opcPrevPage = opcPrevPage
        self.usagePlanCollection = usagePlanCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListUsagePlansResponse: CustomStringConvertible {
    public var description: String { "ListUsagePlansResponse()" }
}