import Foundation

// MARK: - GetTenancyAttachmentRequest

public struct GetTenancyAttachmentRequest: Codable, Sendable {
    public var tenancyAttachmentId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case tenancyAttachmentId, opcRequestId
    }

    public init(
                tenancyAttachmentId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.tenancyAttachmentId = tenancyAttachmentId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetTenancyAttachmentRequest: CustomStringConvertible {
    public var description: String { "GetTenancyAttachmentRequest()" }
}

// MARK: - GetTenancyAttachmentResponse

public struct GetTenancyAttachmentResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var tenancyAttachment: TenancyAttachment?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, tenancyAttachment
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                tenancyAttachment: TenancyAttachment? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.tenancyAttachment = tenancyAttachment
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetTenancyAttachmentResponse: CustomStringConvertible {
    public var description: String { "GetTenancyAttachmentResponse()" }
}