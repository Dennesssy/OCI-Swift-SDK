import Foundation

// MARK: - ListPullRequestsRequest

public struct ListPullRequestsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: PullRequestLifecycleStateEnum?
    public var lifecycleDetails: PullRequestLifecycleDetailsEnum?
    public var repositoryId: String?
    public var displayName: String?
    public var id: String?
    public var createdBy: String?
    public var destinationBranch: String?
    public var sourceBranch: String?
    public var reviewerPrincipalId: String?
    public var sourceRepositoryId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListPullRequestsSortOrderEnum?
    public var sortBy: ListPullRequestsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, lifecycleDetails, repositoryId, displayName, id, createdBy, destinationBranch, sourceBranch, reviewerPrincipalId, sourceRepositoryId, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: PullRequestLifecycleStateEnum? = nil,
                lifecycleDetails: PullRequestLifecycleDetailsEnum? = nil,
                repositoryId: String? = nil,
                displayName: String? = nil,
                id: String? = nil,
                createdBy: String? = nil,
                destinationBranch: String? = nil,
                sourceBranch: String? = nil,
                reviewerPrincipalId: String? = nil,
                sourceRepositoryId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListPullRequestsSortOrderEnum? = nil,
                sortBy: ListPullRequestsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.repositoryId = repositoryId
        self.displayName = displayName
        self.id = id
        self.createdBy = createdBy
        self.destinationBranch = destinationBranch
        self.sourceBranch = sourceBranch
        self.reviewerPrincipalId = reviewerPrincipalId
        self.sourceRepositoryId = sourceRepositoryId
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

extension ListPullRequestsRequest: CustomStringConvertible {
    public var description: String { "ListPullRequestsRequest()" }
}

// MARK: - ListPullRequestsResponse

public struct ListPullRequestsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var pullRequestCollection: PullRequestCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, pullRequestCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                pullRequestCollection: PullRequestCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.pullRequestCollection = pullRequestCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListPullRequestsResponse: CustomStringConvertible {
    public var description: String { "ListPullRequestsResponse()" }
}