import Foundation

// MARK: - DeletePullRequestAttachmentRequest

public struct DeletePullRequestAttachmentRequest: Codable, Sendable {
    public var pullRequestId: String?
    public var attachmentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, attachmentId, ifMatch, opcRequestId
    }

    public init(
                pullRequestId: String? = nil,
                attachmentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.pullRequestId = pullRequestId
        self.attachmentId = attachmentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeletePullRequestAttachmentRequest: CustomStringConvertible {
    public var description: String { "DeletePullRequestAttachmentRequest()" }
}

// MARK: - DeletePullRequestAttachmentResponse

public struct DeletePullRequestAttachmentResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeletePullRequestAttachmentResponse: CustomStringConvertible {
    public var description: String { "DeletePullRequestAttachmentResponse()" }
}