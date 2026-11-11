import Foundation

// MARK: - PullRequestLifecycleActivitySummary

public struct PullRequestLifecycleActivitySummary: Codable, Sendable {

    public var id: String?
    public var principal: PrincipalDetails?
    public var pullRequestId: String?
    public var timeOccurred: Date?
    public var state: PullRequestLifecycleActivitySummaryStateEnum

    private enum CodingKeys: String, CodingKey {
        case id, principal, pullRequestId, timeOccurred, state
    }

    public init(
                id: String? = nil,
                principal: PrincipalDetails? = nil,
                pullRequestId: String? = nil,
                timeOccurred: Date? = nil,
                state: PullRequestLifecycleActivitySummaryStateEnum
    ) {
        self.id = id
        self.principal = principal
        self.pullRequestId = pullRequestId
        self.timeOccurred = timeOccurred
        self.state = state
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PullRequestLifecycleActivitySummary: CustomStringConvertible {
    public var description: String { "PullRequestLifecycleActivitySummary()" }
}