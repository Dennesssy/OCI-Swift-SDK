import Foundation
import OCICommon

// MARK: - UpdatePullRequestDetails

public struct UpdatePullRequestDetails: Codable, Sendable {

    public var displayName: String?
    public var description: String?
    public var destinationBranch: String?
    public var reviewers: [UpdateReviewerDetails]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, description, destinationBranch, reviewers, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                description: String? = nil,
                destinationBranch: String? = nil,
                reviewers: [UpdateReviewerDetails]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.description = description
        self.destinationBranch = destinationBranch
        self.reviewers = reviewers
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
