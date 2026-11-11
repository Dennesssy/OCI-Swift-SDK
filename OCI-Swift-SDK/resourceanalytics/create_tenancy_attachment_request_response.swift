import Foundation

// MARK: - CreateTenancyAttachmentRequest

public struct CreateTenancyAttachmentRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createTenancyAttachmentDetails: CreateTenancyAttachmentDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createTenancyAttachmentDetails
    }

    public init(
                opcRequestId: String? = nil,
                createTenancyAttachmentDetails: CreateTenancyAttachmentDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createTenancyAttachmentDetails = createTenancyAttachmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateTenancyAttachmentRequest: CustomStringConvertible {
    public var description: String { "CreateTenancyAttachmentRequest()" }
}

// MARK: - CreateTenancyAttachmentResponse

public struct CreateTenancyAttachmentResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var tenancyAttachment: TenancyAttachment?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, tenancyAttachment
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                tenancyAttachment: TenancyAttachment? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.tenancyAttachment = tenancyAttachment
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateTenancyAttachmentResponse: CustomStringConvertible {
    public var description: String { "CreateTenancyAttachmentResponse()" }
}