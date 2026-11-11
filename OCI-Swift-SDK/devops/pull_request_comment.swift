import Foundation

// MARK: - PullRequestComment

public struct PullRequestComment: Codable, Sendable {

    public var id: String?
    public var pullRequestId: String?
    public var data: String?
    public var status: PullRequestCommentStatusEnum
    public var timeCreated: Date?
    public var createdBy: PrincipalDetails?
    public var parentId: String?
    public var filePath: String?
    public var commitId: String?
    public var fileType: PullRequestCommentFileTypeEnum?
    public var lineNumber: Int?
    public var likes: PullRequestCommentLikeCollection?
    public var timeUpdated: Date?
    public var updatedBy: PrincipalDetails?
    public var contextStatus: PullRequestCommentContextStatusEnum?
    public var commentContext: [DiffLineDetails]?

    private enum CodingKeys: String, CodingKey {
        case id, pullRequestId, data, status, timeCreated, createdBy, parentId, filePath, commitId, fileType, lineNumber, likes, timeUpdated, updatedBy, contextStatus, commentContext
    }

    public init(
                id: String? = nil,
                pullRequestId: String? = nil,
                data: String? = nil,
                status: PullRequestCommentStatusEnum,
                timeCreated: Date? = nil,
                createdBy: PrincipalDetails? = nil,
                parentId: String? = nil,
                filePath: String? = nil,
                commitId: String? = nil,
                fileType: PullRequestCommentFileTypeEnum? = nil,
                lineNumber: Int? = nil,
                likes: PullRequestCommentLikeCollection? = nil,
                timeUpdated: Date? = nil,
                updatedBy: PrincipalDetails? = nil,
                contextStatus: PullRequestCommentContextStatusEnum? = nil,
                commentContext: [DiffLineDetails]? = nil
    ) {
        self.id = id
        self.pullRequestId = pullRequestId
        self.data = data
        self.status = status
        self.timeCreated = timeCreated
        self.createdBy = createdBy
        self.parentId = parentId
        self.filePath = filePath
        self.commitId = commitId
        self.fileType = fileType
        self.lineNumber = lineNumber
        self.likes = likes
        self.timeUpdated = timeUpdated
        self.updatedBy = updatedBy
        self.contextStatus = contextStatus
        self.commentContext = commentContext
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PullRequestComment: CustomStringConvertible {
    public var description: String { "PullRequestComment()" }
}