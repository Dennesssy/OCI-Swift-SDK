import Foundation

// MARK: - ListSandboxesRequest

public struct ListSandboxesRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var projectId: String?
    public var compartmentId: String?
    public var sandboxId: String?
    public var displayName: String?
    public var lifecycleState: SandboxLifecycleStateEnum?
    public var sortBy: ListSandboxesSortByEnum?
    public var sortOrder: ListSandboxesSortOrderEnum?
    public var limit: Int?
    public var page: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, projectId, compartmentId, sandboxId, displayName, lifecycleState, sortBy, sortOrder, limit, page
    }

    public init(
                opcRequestId: String? = nil,
                projectId: String? = nil,
                compartmentId: String? = nil,
                sandboxId: String? = nil,
                displayName: String? = nil,
                lifecycleState: SandboxLifecycleStateEnum? = nil,
                sortBy: ListSandboxesSortByEnum? = nil,
                sortOrder: ListSandboxesSortOrderEnum? = nil,
                limit: Int? = nil,
                page: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.projectId = projectId
        self.compartmentId = compartmentId
        self.sandboxId = sandboxId
        self.displayName = displayName
        self.lifecycleState = lifecycleState
        self.sortBy = sortBy
        self.sortOrder = sortOrder
        self.limit = limit
        self.page = page
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListSandboxesRequest: CustomStringConvertible {
    public var description: String { "ListSandboxesRequest()" }
}

// MARK: - ListSandboxesResponse

public struct ListSandboxesResponse: Codable, Sendable {
    public var opcNextPage: String?
    public var opcRequestId: String?
    public var sandboxCollection: SandboxCollection?

    private enum CodingKeys: String, CodingKey {
        case opcNextPage, opcRequestId, sandboxCollection
    }

    public init(
                opcNextPage: String? = nil,
                opcRequestId: String? = nil,
                sandboxCollection: SandboxCollection? = nil
    ) {
        self.opcNextPage = opcNextPage
        self.opcRequestId = opcRequestId
        self.sandboxCollection = sandboxCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListSandboxesResponse: CustomStringConvertible {
    public var description: String { "ListSandboxesResponse()" }
}