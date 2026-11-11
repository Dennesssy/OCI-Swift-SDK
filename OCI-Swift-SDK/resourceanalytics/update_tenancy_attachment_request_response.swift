import Foundation

// MARK: - UpdateTenancyAttachmentRequest

public struct UpdateTenancyAttachmentRequest: Codable, Sendable {
    public var tenancyAttachmentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateTenancyAttachmentDetails: UpdateTenancyAttachmentDetails?

    private enum CodingKeys: String, CodingKey {
        case tenancyAttachmentId, ifMatch, opcRequestId, updateTenancyAttachmentDetails
    }

    public init(
                tenancyAttachmentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateTenancyAttachmentDetails: UpdateTenancyAttachmentDetails? = nil
    ) {
        self.tenancyAttachmentId = tenancyAttachmentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateTenancyAttachmentDetails = updateTenancyAttachmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateTenancyAttachmentRequest: CustomStringConvertible {
    public var description: String { "UpdateTenancyAttachmentRequest()" }
}

// MARK: - UpdateTenancyAttachmentResponse

public struct UpdateTenancyAttachmentResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateTenancyAttachmentResponse: CustomStringConvertible {
    public var description: String { "UpdateTenancyAttachmentResponse()" }
}