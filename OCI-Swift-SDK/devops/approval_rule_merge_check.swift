import Foundation

// MARK: - ApprovalRuleMergeCheck

public struct ApprovalRuleMergeCheck: Codable, Sendable {

    public var ruleName: String?
    public var totalApprovalCount: Int?
    public var currentApprovalCount: Int?
    public var reviewers: [PrincipalDetails]?
    public var status: ApprovalRuleMergeCheckStatusEnum?
    public var level: ApprovalRuleMergeCheckLevelEnum?

    private enum CodingKeys: String, CodingKey {
        case ruleName, totalApprovalCount, currentApprovalCount, reviewers, status, level
    }

    public init(
                ruleName: String? = nil,
                totalApprovalCount: Int? = nil,
                currentApprovalCount: Int? = nil,
                reviewers: [PrincipalDetails]? = nil,
                status: ApprovalRuleMergeCheckStatusEnum? = nil,
                level: ApprovalRuleMergeCheckLevelEnum? = nil
    ) {
        self.ruleName = ruleName
        self.totalApprovalCount = totalApprovalCount
        self.currentApprovalCount = currentApprovalCount
        self.reviewers = reviewers
        self.status = status
        self.level = level
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApprovalRuleMergeCheck: CustomStringConvertible {
    public var description: String { "ApprovalRuleMergeCheck()" }
}