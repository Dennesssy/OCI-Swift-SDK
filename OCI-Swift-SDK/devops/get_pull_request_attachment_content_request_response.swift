import Foundation

// MARK: - GetPullRequestAttachmentContentRequest

public struct GetPullRequestAttachmentContentRequest: Codable, Sendable {
    public var pullRequestId: String?
    public var attachmentId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, attachmentId, opcRequestId
    }

    public init(
                pullRequestId: String? = nil,
                attachmentId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.pullRequestId = pullRequestId
        self.attachmentId = attachmentId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPullRequestAttachmentContentRequest: CustomStringConvertible {
    public var description: String { "GetPullRequestAttachmentContentRequest()" }
}

// MARK: - GetPullRequestAttachmentContentResponse

public struct GetPullRequestAttachmentContentResponse: Codable, Sendable {
    public var content: Data?
    public var etag: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case content, etag, opcRequestId
    }

    public init(
                content: Data? = nil,
                etag: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.content = content
        self.etag = etag
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPullRequestAttachmentContentResponse: CustomStringConvertible {
    public var description: String { "GetPullRequestAttachmentContentResponse()" }
}