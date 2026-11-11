import Foundation

// MARK: - DeleteTenancyAttachmentRequest

public struct DeleteTenancyAttachmentRequest: Codable, Sendable {
    public var tenancyAttachmentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case tenancyAttachmentId, ifMatch, opcRequestId
    }

    public init(
                tenancyAttachmentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.tenancyAttachmentId = tenancyAttachmentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteTenancyAttachmentRequest: CustomStringConvertible {
    public var description: String { "DeleteTenancyAttachmentRequest()" }
}

// MARK: - DeleteTenancyAttachmentResponse

public struct DeleteTenancyAttachmentResponse: Codable, Sendable {
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

extension DeleteTenancyAttachmentResponse: CustomStringConvertible {
    public var description: String { "DeleteTenancyAttachmentResponse()" }
}