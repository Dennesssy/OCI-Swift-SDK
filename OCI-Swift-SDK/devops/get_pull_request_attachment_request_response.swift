import Foundation

// MARK: - GetPullRequestAttachmentRequest

public struct GetPullRequestAttachmentRequest: Codable, Sendable {
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

extension GetPullRequestAttachmentRequest: CustomStringConvertible {
    public var description: String { "GetPullRequestAttachmentRequest()" }
}

// MARK: - GetPullRequestAttachmentResponse

public struct GetPullRequestAttachmentResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var pullRequestAttachment: PullRequestAttachment?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, pullRequestAttachment
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                pullRequestAttachment: PullRequestAttachment? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.pullRequestAttachment = pullRequestAttachment
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPullRequestAttachmentResponse: CustomStringConvertible {
    public var description: String { "GetPullRequestAttachmentResponse()" }
}