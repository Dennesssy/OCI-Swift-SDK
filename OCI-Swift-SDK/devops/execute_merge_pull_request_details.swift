import Foundation

// MARK: - ExecuteMergePullRequestDetails

public struct ExecuteMergePullRequestDetails: Codable, Sendable {

    public var commitMessage: String?
    public var postMergeAction: ExecuteMergePullRequestDetailsPostMergeActionEnum?
    public var mergeStrategy: MergeStrategyEnum

    private enum CodingKeys: String, CodingKey {
        case commitMessage, postMergeAction, mergeStrategy
    }

    public init(
                commitMessage: String? = nil,
                postMergeAction: ExecuteMergePullRequestDetailsPostMergeActionEnum? = nil,
                mergeStrategy: MergeStrategyEnum
    ) {
        self.commitMessage = commitMessage
        self.postMergeAction = postMergeAction
        self.mergeStrategy = mergeStrategy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteMergePullRequestDetails: CustomStringConvertible {
    public var description: String { "ExecuteMergePullRequestDetails()" }
}