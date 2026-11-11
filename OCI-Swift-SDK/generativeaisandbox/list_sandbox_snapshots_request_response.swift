import Foundation

// MARK: - ListSandboxSnapshotsRequest

public struct ListSandboxSnapshotsRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var projectId: String?
    public var displayName: String?
    public var sandboxId: String?
    public var snapshotId: String?
    public var lifecycleState: SandboxSnapshotLifecycleStateEnum?
    public var sortBy: ListSandboxSnapshotsSortByEnum?
    public var sortOrder: ListSandboxSnapshotsSortOrderEnum?
    public var limit: Int?
    public var page: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, projectId, displayName, sandboxId, snapshotId, lifecycleState, sortBy, sortOrder, limit, page
    }

    public init(
                opcRequestId: String? = nil,
                projectId: String? = nil,
                displayName: String? = nil,
                sandboxId: String? = nil,
                snapshotId: String? = nil,
                lifecycleState: SandboxSnapshotLifecycleStateEnum? = nil,
                sortBy: ListSandboxSnapshotsSortByEnum? = nil,
                sortOrder: ListSandboxSnapshotsSortOrderEnum? = nil,
                limit: Int? = nil,
                page: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.projectId = projectId
        self.displayName = displayName
        self.sandboxId = sandboxId
        self.snapshotId = snapshotId
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

extension ListSandboxSnapshotsRequest: CustomStringConvertible {
    public var description: String { "ListSandboxSnapshotsRequest()" }
}

// MARK: - ListSandboxSnapshotsResponse

public struct ListSandboxSnapshotsResponse: Codable, Sendable {
    public var opcNextPage: String?
    public var opcRequestId: String?
    public var sandboxSnapshotCollection: SandboxSnapshotCollection?

    private enum CodingKeys: String, CodingKey {
        case opcNextPage, opcRequestId, sandboxSnapshotCollection
    }

    public init(
                opcNextPage: String? = nil,
                opcRequestId: String? = nil,
                sandboxSnapshotCollection: SandboxSnapshotCollection? = nil
    ) {
        self.opcNextPage = opcNextPage
        self.opcRequestId = opcRequestId
        self.sandboxSnapshotCollection = sandboxSnapshotCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListSandboxSnapshotsResponse: CustomStringConvertible {
    public var description: String { "ListSandboxSnapshotsResponse()" }
}