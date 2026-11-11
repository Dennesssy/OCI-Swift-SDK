import Foundation

// MARK: - ApprovalRule

public struct ApprovalRule: Codable, Sendable {

    public var name: String?
    public var minApprovalsCount: Int?
    public var destinationBranch: String?
    public var reviewers: [PrincipalDetails]?

    private enum CodingKeys: String, CodingKey {
        case name, minApprovalsCount, destinationBranch, reviewers
    }

    public init(
                name: String? = nil,
                minApprovalsCount: Int? = nil,
                destinationBranch: String? = nil,
                reviewers: [PrincipalDetails]? = nil
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

extension ApprovalRule: CustomStringConvertible {
    public var description: String { "ApprovalRule()" }
}