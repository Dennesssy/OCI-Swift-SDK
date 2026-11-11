import Foundation

// MARK: - ListBuildRunSnapshotsRequest

public struct ListBuildRunSnapshotsRequest: Codable, Sendable {
    public var pullRequestId: String?
    public var pipelineId: String?
    public var buildRunId: String?
    public var commitId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListBuildRunSnapshotsSortOrderEnum?
    public var sortBy: ListBuildRunSnapshotsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, pipelineId, buildRunId, commitId, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                pullRequestId: String? = nil,
                pipelineId: String? = nil,
                buildRunId: String? = nil,
                commitId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListBuildRunSnapshotsSortOrderEnum? = nil,
                sortBy: ListBuildRunSnapshotsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.pullRequestId = pullRequestId
        self.pipelineId = pipelineId
        self.buildRunId = buildRunId
        self.commitId = commitId
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

extension ListBuildRunSnapshotsRequest: CustomStringConvertible {
    public var description: String { "ListBuildRunSnapshotsRequest()" }
}

// MARK: - ListBuildRunSnapshotsResponse

public struct ListBuildRunSnapshotsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var buildRunSnapshotCollection: BuildRunSnapshotCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, buildRunSnapshotCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                buildRunSnapshotCollection: BuildRunSnapshotCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.buildRunSnapshotCollection = buildRunSnapshotCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListBuildRunSnapshotsResponse: CustomStringConvertible {
    public var description: String { "ListBuildRunSnapshotsResponse()" }
}