import Foundation
import OCICommon

// MARK: - PullRequestSummary

public struct PullRequestSummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var repositoryId: String?
    public var sourceBranch: String?
    public var destinationBranch: String?
    public var timeCreated: Date?
    public var lifecycleState: PullRequestLifecycleStateEnum
    public var lifecycleDetails: PullRequestLifecycleDetailsEnum
    public var totalComments: Int?
    public var totalReviewers: Int?
    public var createdBy: PrincipalDetails?
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var systemTags: [String: [String: JSONValue]]
    public var description: String?
    public var sourceRepositoryId: String?
    public var sourceCommitIdAtTermination: String?
    public var mergeBaseCommitIdAtTermination: String?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, repositoryId, sourceBranch, destinationBranch, timeCreated, lifecycleState, lifecycleDetails, totalComments, totalReviewers, createdBy, freeformTags, definedTags, systemTags, description, sourceRepositoryId, sourceCommitIdAtTermination, mergeBaseCommitIdAtTermination, timeUpdated
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
                totalComments: Int? = nil,
                totalReviewers: Int? = nil,
                createdBy: PrincipalDetails? = nil,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                systemTags: [String: [String: JSONValue]],
                description: String? = nil,
                sourceRepositoryId: String? = nil,
                sourceCommitIdAtTermination: String? = nil,
                mergeBaseCommitIdAtTermination: String? = nil,
                timeUpdated: Date? = nil
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
        self.totalComments = totalComments
        self.totalReviewers = totalReviewers
        self.createdBy = createdBy
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.description = description
        self.sourceRepositoryId = sourceRepositoryId
        self.sourceCommitIdAtTermination = sourceCommitIdAtTermination
        self.mergeBaseCommitIdAtTermination = mergeBaseCommitIdAtTermination
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
