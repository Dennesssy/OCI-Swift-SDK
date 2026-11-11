import Foundation

// MARK: - PullRequestCommentLikeCollection

public struct PullRequestCommentLikeCollection: Codable, Sendable {

    public var users: [PrincipalDetails]
    public var totalLikes: Int?

    private enum CodingKeys: String, CodingKey {
        case users, totalLikes
    }

    public init(
                users: [PrincipalDetails],
                totalLikes: Int? = nil
    ) {
        self.users = users
        self.totalLikes = totalLikes
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PullRequestCommentLikeCollection: CustomStringConvertible {
    public var description: String { "PullRequestCommentLikeCollection()" }
}