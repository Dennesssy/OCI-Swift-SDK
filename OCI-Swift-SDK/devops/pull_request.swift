import Foundation
import OCICommon

// MARK: - PullRequest

public struct PullRequest: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var repositoryId: String?
    public var sourceBranch: String?
    public var destinationBranch: String?
    public var timeCreated: Date?
    public var lifecycleState: PullRequestLifecycleStateEnum
    public var lifecycleDetails: PullRequestLifecycleDetailsEnum
    public var createdBy: PrincipalDetails?
    public var totalComments: Int?
    public var totalReviewers: Int?
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var systemTags: [String: [String: JSONValue]]
    public var description: String?
    public var sourceCommitIdAtTermination: String?
    public var mergeBaseCommitIdAtTermination: String?
    public var timeUpdated: Date?
    public var reviewers: [Reviewer]?
    public var mergeChecks: MergeCheckCollection?
    public var mergedBy: PrincipalDetails?
    public var sourceRepositoryId: String?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, repositoryId, sourceBranch, destinationBranch, timeCreated, lifecycleState, lifecycleDetails, createdBy, totalComments, totalReviewers, freeformTags, definedTags, systemTags, description, sourceCommitIdAtTermination, mergeBaseCommitIdAtTermination, timeUpdated, reviewers, mergeChecks, mergedBy, sourceRepositoryId
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                repositoryId: String? = nil,
                sourceBranch: String? = nil,
                destinationBranch: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: PullRequestLifecycleStateEnum,
                lifecycleDetails: PullRequestLifecycleDetailsEnum,
                createdBy: PrincipalDetails? = nil,
                totalComments: Int? = nil,
                totalReviewers: Int? = nil,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                systemTags: [String: [String: JSONValue]],
                description: String? = nil,
                sourceCommitIdAtTermination: String? = nil,
                mergeBaseCommitIdAtTermination: String? = nil,
                timeUpdated: Date? = nil,
                reviewers: [Reviewer]? = nil,
                mergeChecks: MergeCheckCollection? = nil,
                mergedBy: PrincipalDetails? = nil,
                sourceRepositoryId: String? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.repositoryId = repositoryId
        self.sourceBranch = sourceBranch
        self.destinationBranch = destinationBranch
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.createdBy = createdBy
        self.totalComments = totalComments
        self.totalReviewers = totalReviewers
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.description = description
        self.sourceCommitIdAtTermination = sourceCommitIdAtTermination
        self.mergeBaseCommitIdAtTermination = mergeBaseCommitIdAtTermination
        self.timeUpdated = timeUpdated
        self.reviewers = reviewers
        self.mergeChecks = mergeChecks
        self.mergedBy = mergedBy
        self.sourceRepositoryId = sourceRepositoryId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
