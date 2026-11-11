import Foundation

// MARK: - ListInfrastructuresRequest

public struct ListInfrastructuresRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var lifecycleState: [InfrastructureLifecycleStateEnum]?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListInfrastructuresSortOrderEnum?
    public var sortBy: ListInfrastructuresSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, lifecycleState, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                lifecycleState: [InfrastructureLifecycleStateEnum]? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListInfrastructuresSortOrderEnum? = nil,
                sortBy: ListInfrastructuresSortByEnum? = nil,
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

extension ListInfrastructuresRequest: CustomStringConvertible {
    public var description: String { "ListInfrastructuresRequest()" }
}

// MARK: - ListInfrastructuresResponse

public struct ListInfrastructuresResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var infrastructureCollection: InfrastructureCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, infrastructureCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                infrastructureCollection: InfrastructureCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.infrastructureCollection = infrastructureCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListInfrastructuresResponse: CustomStringConvertible {
    public var description: String { "ListInfrastructuresResponse()" }
}