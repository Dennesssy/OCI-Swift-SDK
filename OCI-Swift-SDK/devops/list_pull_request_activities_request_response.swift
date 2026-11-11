import Foundation

// MARK: - ListPullRequestActivitiesRequest

public struct ListPullRequestActivitiesRequest: Codable, Sendable {
    public var pullRequestId: String?
    public var activityType: ListPullRequestActivitiesActivityTypeEnum?
    public var sortOrder: ListPullRequestActivitiesSortOrderEnum?
    public var limit: Int?
    public var page: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, activityType, sortOrder, limit, page, opcRequestId
    }

    public init(
                pullRequestId: String? = nil,
                activityType: ListPullRequestActivitiesActivityTypeEnum? = nil,
                sortOrder: ListPullRequestActivitiesSortOrderEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.pullRequestId = pullRequestId
        self.activityType = activityType
        self.sortOrder = sortOrder
        self.limit = limit
        self.page = page
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListPullRequestActivitiesRequest: CustomStringConvertible {
    public var description: String { "ListPullRequestActivitiesRequest()" }
}

// MARK: - ListPullRequestActivitiesResponse

public struct ListPullRequestActivitiesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var pullRequestActivityCollection: PullRequestActivityCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, pullRequestActivityCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                pullRequestActivityCollection: PullRequestActivityCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.pullRequestActivityCollection = pullRequestActivityCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListPullRequestActivitiesResponse: CustomStringConvertible {
    public var description: String { "ListPullRequestActivitiesResponse()" }
}