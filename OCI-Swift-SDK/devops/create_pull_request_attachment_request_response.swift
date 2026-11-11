import Foundation

// MARK: - CreatePullRequestAttachmentRequest

public struct CreatePullRequestAttachmentRequest: Codable, Sendable {
    public var pullRequestId: String?
    public var contentDisposition: String?
    public var createPullRequestAttachmentBody: Data
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, contentDisposition, createPullRequestAttachmentBody, opcRequestId
    }

    public init(
                pullRequestId: String? = nil,
                contentDisposition: String? = nil,
                createPullRequestAttachmentBody: Data,
                opcRequestId: String? = nil
    ) {
        self.pullRequestId = pullRequestId
        self.contentDisposition = contentDisposition
        self.createPullRequestAttachmentBody = createPullRequestAttachmentBody
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreatePullRequestAttachmentRequest: CustomStringConvertible {
    public var description: String { "CreatePullRequestAttachmentRequest()" }
}

// MARK: - CreatePullRequestAttachmentResponse

public struct CreatePullRequestAttachmentResponse: Codable, Sendable {
    public var contentLocation: String?
    public var location: String?
    public var opcRequestId: String?
    public var etag: String?
    public var pullRequestAttachment: PullRequestAttachment?

    private enum CodingKeys: String, CodingKey {
        case contentLocation, location, opcRequestId, etag, pullRequestAttachment
    }

    public init(
                contentLocation: String? = nil,
                location: String? = nil,
                opcRequestId: String? = nil,
                etag: String? = nil,
                pullRequestAttachment: PullRequestAttachment? = nil
    ) {
        self.contentLocation = contentLocation
        self.location = location
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.pullRequestAttachment = pullRequestAttachment
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreatePullRequestAttachmentResponse: CustomStringConvertible {
    public var description: String { "CreatePullRequestAttachmentResponse()" }
}