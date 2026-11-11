import Foundation

// MARK: - UpdateApprovalRuleDetails

public struct UpdateApprovalRuleDetails: Codable, Sendable {

    public var name: String?
    public var minApprovalsCount: Int?
    public var destinationBranch: String?
    public var reviewers: [UpdateReviewerDetails]?

    private enum CodingKeys: String, CodingKey {
        case name, minApprovalsCount, destinationBranch, reviewers
    }

    public init(
                name: String? = nil,
                minApprovalsCount: Int? = nil,
                destinationBranch: String? = nil,
                reviewers: [UpdateReviewerDetails]? = nil
    ) {
        self.name = name
        self.minApprovalsCount = minApprovalsCount
        self.destinationBranch = destinationBranch
        self.reviewers = reviewers
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateApprovalRuleDetails: CustomStringConvertible {
    public var description: String { "UpdateApprovalRuleDetails()" }
}