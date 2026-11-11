import Foundation

// MARK: - CreatePullRequestCommentDetails

public struct CreatePullRequestCommentDetails: Codable, Sendable {

    public var data: String?
    public var parentId: String?
    public var filePath: String?
    public var commitId: String?
    public var fileType: PullRequestCommentFileTypeEnum?
    public var lineNumber: Int?

    private enum CodingKeys: String, CodingKey {
        case data, parentId, filePath, commitId, fileType, lineNumber
    }

    public init(
                data: String? = nil,
                parentId: String? = nil,
                filePath: String? = nil,
                commitId: String? = nil,
                fileType: PullRequestCommentFileTypeEnum? = nil,
                lineNumber: Int? = nil
    ) {
        self.data = data
        self.parentId = parentId
        self.filePath = filePath
        self.commitId = commitId
        self.fileType = fileType
        self.lineNumber = lineNumber
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreatePullRequestCommentDetails: CustomStringConvertible {
    public var description: String { "CreatePullRequestCommentDetails()" }
}