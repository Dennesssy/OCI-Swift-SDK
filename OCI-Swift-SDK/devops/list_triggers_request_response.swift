import Foundation

// MARK: - ListTriggersRequest

public struct ListTriggersRequest: Codable, Sendable {
    public var compartmentId: String?
    public var projectId: String?
    public var lifecycleState: TriggerLifecycleStateEnum?
    public var displayName: String?
    public var id: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListTriggersSortOrderEnum?
    public var sortBy: ListTriggersSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, projectId, lifecycleState, displayName, id, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                projectId: String? = nil,
                lifecycleState: TriggerLifecycleStateEnum? = nil,
                displayName: String? = nil,
                id: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListTriggersSortOrderEnum? = nil,
                sortBy: ListTriggersSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.projectId = projectId
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.id = id
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

extension ListTriggersRequest: CustomStringConvertible {
    public var description: String { "ListTriggersRequest()" }
}

// MARK: - ListTriggersResponse

public struct ListTriggersResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var triggerCollection: TriggerCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, triggerCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                triggerCollection: TriggerCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.triggerCollection = triggerCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListTriggersResponse: CustomStringConvertible {
    public var description: String { "ListTriggersResponse()" }
}