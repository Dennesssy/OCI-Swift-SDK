import Foundation

// MARK: - ReviewerActivitySummary

public struct ReviewerActivitySummary: Codable, Sendable {

    public var id: String?
    public var principal: PrincipalDetails?
    public var pullRequestId: String?
    public var timeOccurred: Date?
    public var reviewersAdded: [PrincipalDetails]
    public var reviewersRemoved: [PrincipalDetails]

    private enum CodingKeys: String, CodingKey {
        case id, principal, pullRequestId, timeOccurred, reviewersAdded, reviewersRemoved
    }

    public init(
                id: String? = nil,
                principal: PrincipalDetails? = nil,
                pullRequestId: String? = nil,
                timeOccurred: Date? = nil,
                reviewersAdded: [PrincipalDetails],
                reviewersRemoved: [PrincipalDetails]
    ) {
        self.id = id
        self.principal = principal
        self.pullRequestId = pullRequestId
        self.timeOccurred = timeOccurred
        self.reviewersAdded = reviewersAdded
        self.reviewersRemoved = reviewersRemoved
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ReviewerActivitySummary: CustomStringConvertible {
    public var description: String { "ReviewerActivitySummary()" }
}