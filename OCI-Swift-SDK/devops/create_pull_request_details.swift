import Foundation
import OCICommon

// MARK: - CreatePullRequestDetails

public struct CreatePullRequestDetails: Codable, Sendable {

    public var displayName: String?
    public var sourceBranch: String?
    public var repositoryId: String?
    public var destinationBranch: String?
    public var sourceRepositoryId: String?
    public var description: String?
    public var reviewers: [CreateReviewerDetails]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, sourceBranch, repositoryId, destinationBranch, sourceRepositoryId, description, reviewers, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                sourceBranch: String? = nil,
                repositoryId: String? = nil,
                destinationBranch: String? = nil,
                sourceRepositoryId: String? = nil,
                description: String? = nil,
                reviewers: [CreateReviewerDetails]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.sourceBranch = sourceBranch
        self.repositoryId = repositoryId
        self.destinationBranch = destinationBranch
        self.sourceRepositoryId = sourceRepositoryId
        self.description = description
        self.reviewers = reviewers
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
