import Foundation

// MARK: - ListCompartmentsRequest

public struct ListCompartmentsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var page: String?
    public var limit: Int?
    public var accessLevel: ListCompartmentsAccessLevelEnum?
    public var compartmentIdInSubtree: Bool?
    public var name: String?
    public var sortBy: ListCompartmentsSortByEnum?
    public var sortOrder: ListCompartmentsSortOrderEnum?
    public var lifecycleState: CompartmentLifecycleStateEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, page, limit, accessLevel, compartmentIdInSubtree, name, sortBy, sortOrder, lifecycleState, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                accessLevel: ListCompartmentsAccessLevelEnum? = nil,
                compartmentIdInSubtree: Bool? = nil,
                name: String? = nil,
                sortBy: ListCompartmentsSortByEnum? = nil,
                sortOrder: ListCompartmentsSortOrderEnum? = nil,
                lifecycleState: CompartmentLifecycleStateEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.page = page
        self.limit = limit
        self.accessLevel = accessLevel
        self.compartmentIdInSubtree = compartmentIdInSubtree
        self.name = name
        self.sortBy = sortBy
        self.sortOrder = sortOrder
        self.lifecycleState = lifecycleState
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListCompartmentsRequest: CustomStringConvertible {
    public var description: String { "ListCompartmentsRequest()" }
}

// MARK: - ListCompartmentsResponse

public struct ListCompartmentsResponse: Codable, Sendable {
    public var items: [Compartment]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [Compartment]? = nil,
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

extension ListCompartmentsResponse: CustomStringConvertible {
    public var description: String { "ListCompartmentsResponse()" }
}