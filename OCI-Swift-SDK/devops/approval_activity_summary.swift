import Foundation

// MARK: - ApprovalActivitySummary

public struct ApprovalActivitySummary: Codable, Sendable {

    public var id: String?
    public var principal: PrincipalDetails?
    public var pullRequestId: String?
    public var timeOccurred: Date?
    public var status: ApprovalActivitySummaryStatusEnum

    private enum CodingKeys: String, CodingKey {
        case id, principal, pullRequestId, timeOccurred, status
    }

    public init(
                id: String? = nil,
                principal: PrincipalDetails? = nil,
                pullRequestId: String? = nil,
                timeOccurred: Date? = nil,
                status: ApprovalActivitySummaryStatusEnum
    ) {
        self.id = id
        self.principal = principal
        self.pullRequestId = pullRequestId
        self.timeOccurred = timeOccurred
        self.status = status
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApprovalActivitySummary: CustomStringConvertible {
    public var description: String { "ApprovalActivitySummary()" }
}