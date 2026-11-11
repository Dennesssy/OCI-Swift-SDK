import Foundation

// MARK: - ListIotFlowRuntimesRequest

public struct ListIotFlowRuntimesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var id: String?
    public var iotDomainId: String?
    public var displayName: String?
    public var lifecycleState: IotFlowRuntimeLifecycleStateEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListIotFlowRuntimesSortOrderEnum?
    public var sortBy: ListIotFlowRuntimesSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, id, iotDomainId, displayName, lifecycleState, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                id: String? = nil,
                iotDomainId: String? = nil,
                displayName: String? = nil,
                lifecycleState: IotFlowRuntimeLifecycleStateEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListIotFlowRuntimesSortOrderEnum? = nil,
                sortBy: ListIotFlowRuntimesSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.id = id
        self.iotDomainId = iotDomainId
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

extension ListIotFlowRuntimesRequest: CustomStringConvertible {
    public var description: String { "ListIotFlowRuntimesRequest()" }
}

// MARK: - ListIotFlowRuntimesResponse

public struct ListIotFlowRuntimesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var opcPrevPage: String?
    public var iotFlowRuntimeCollection: IotFlowRuntimeCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, opcPrevPage, iotFlowRuntimeCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                opcPrevPage: String? = nil,
                iotFlowRuntimeCollection: IotFlowRuntimeCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.opcPrevPage = opcPrevPage
        self.iotFlowRuntimeCollection = iotFlowRuntimeCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListIotFlowRuntimesResponse: CustomStringConvertible {
    public var description: String { "ListIotFlowRuntimesResponse()" }
}