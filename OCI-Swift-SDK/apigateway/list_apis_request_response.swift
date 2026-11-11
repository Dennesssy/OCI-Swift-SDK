import Foundation

// MARK: - ListApisRequest

public struct ListApisRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var lifecycleState: ApiSummaryLifecycleStateEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListApisSortOrderEnum?
    public var sortBy: ListApisSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, lifecycleState, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                lifecycleState: ApiSummaryLifecycleStateEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListApisSortOrderEnum? = nil,
                sortBy: ListApisSortByEnum? = nil,
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

extension ListApisRequest: CustomStringConvertible {
    public var description: String { "ListApisRequest()" }
}

// MARK: - ListApisResponse

public struct ListApisResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var opcPrevPage: String?
    public var apiCollection: ApiCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, opcPrevPage, apiCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                opcPrevPage: String? = nil,
                apiCollection: ApiCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.opcPrevPage = opcPrevPage
        self.apiCollection = apiCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListApisResponse: CustomStringConvertible {
    public var description: String { "ListApisResponse()" }
}